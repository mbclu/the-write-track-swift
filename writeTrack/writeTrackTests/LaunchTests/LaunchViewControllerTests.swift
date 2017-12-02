//
//  writeTrackTests.swift
//  writeTrackTests
//
//  Created by Mitch Clutter on 10/29/17.
//  Copyright © 2017 Mitch Clutter. All rights reserved.
//

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

            beforeEach {
                let storyboard = UIStoryboard.init(name: "Main", bundle: nil)

                subject = storyboard.instantiateInitialViewController() as! LaunchViewController
            }

            describe("viewDidLoad()") {
                // TODO: Create mocking framework to mock the view and verify that presentScene gets called on the view
                var view: SKView!

                beforeEach {
                    view = subject.view as! SKView
                }

                it("grabs the launch scene") {
                    expect(view.scene?.name).to(equal("LaunchScene"))
                }

                it("sets the launch scene scale mode to aspect fill so that the full screen is filled") {
                    expect(view.scene?.scaleMode).to(equal(SKSceneScaleMode.aspectFill))
                }

                it("sets the status bar preferences to be hidden") {
                    expect(subject.prefersStatusBarHidden).to(beTrue())
                }
            }
        }
    }
}
