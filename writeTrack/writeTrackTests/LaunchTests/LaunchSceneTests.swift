import XCTest
import Nimble
import Quick
import SpriteKit
@testable import writeTrack

class LaunchSceneTests: QuickSpec {

    override func spec() {
        describe("Launch Scene") {

            var subject: LaunchScene!

            beforeEach {
                subject = SKScene(fileNamed: "LaunchScene") as! LaunchScene
            }

            describe("sceneDidLoad") {
                beforeEach {
                    subject.sceneDidLoad()
                }

                it("stores a node for the track") {
                    expect(subject.track).toNot(beNil())
                }
            }
        }
    }
}
