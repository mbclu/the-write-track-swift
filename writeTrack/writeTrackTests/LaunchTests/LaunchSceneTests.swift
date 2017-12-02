//
//  LaunchSceneTests.swift
//  writeTrackTests
//
//  Created by Mitch Clutter on 12/1/17.
//  Copyright © 2017 Mitch Clutter. All rights reserved.
//

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

            describe("didMove(to: SKView)") {
                beforeEach {
                    subject.didMove(to: SKView())
                }

                it("stores a node for the track") {
                    expect(subject.track).toNot(beNil())
                }
                //    it("")
                //    func testWhenMovedToTheLaunchSceneHasATrackNode() {
                //        subject.didMove(to: SKView())
                //
                //        expect(self.subject.track).toNot(beNil())
                //    }
            }
        }
    }
}
