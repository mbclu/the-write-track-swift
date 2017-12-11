import XCTest
import Nimble
import Quick
import SpriteKit
import SceneKit
@testable import writeTrack

class LaunchViewControllerTests: QuickSpec {

    override func spec() {

        describe("Launch View Controller") {
            var subject: LaunchViewController!
            var view: SKView!

            beforeEach {
                let storyboard = UIStoryboard.init(name: "Main", bundle: nil)

                subject = storyboard.instantiateInitialViewController() as! LaunchViewController

                view = subject.view as! SKView
            }

            describe("viewDidLoad") {

                it("sets the launch scene scale mode to aspect fill so that the full screen is filled") {
                    expect(view.scene?.scaleMode).to(equal(SKSceneScaleMode.aspectFill))
                }

                it("presents the scene") {
                    let mockSKView = MockSKView()
                    subject.view = mockSKView

                    subject.viewDidLoad()

                    let scene = mockSKView.invocations[0].params?[0] as! SKScene
                    expect(scene.name).to(equal("LaunchScene"))
                }

                it("ignores sibling order") {
                    expect(view.ignoresSiblingOrder).to(beTrue())
                }
            }

            describe("viewWillAppear") {
                var mockScene: MockLaunchScene!
                var mockNode: MockSKNode!

                beforeEach {
                    mockNode = MockSKNode()
                    mockScene = MockLaunchScene()
                    mockScene.when(invoking: Invocation(named: "track")).thenReturn(mockNode)
                    subject.launchScene = mockScene

                    subject.viewDidAppear(false)
                }

                it("runs an action on the track node of the launch scene") {
                    let action = mockNode.invocations[0].params?[0] as! SKAction
                    expect(action.duration).to(beCloseTo(0.3))
                }
            }

            it("sets the status bar preferences to be hidden") {
                expect(subject.prefersStatusBarHidden).to(beTrue())
            }
        }
    }
}
