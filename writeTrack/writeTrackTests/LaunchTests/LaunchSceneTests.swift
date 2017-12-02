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

            describe("sceneDidLoad") {
                beforeEach {
                    subject.sceneDidLoad()
                }

                it("stores a node for the track") {
                    expect(subject.track).toNot(beNil())
                }
            }

            describe("didMove") {

                var mockNode: MockSKNode!

                beforeEach {
                    mockNode = MockSKNode()
                    subject.track = mockNode
                    subject.didMove(to: SKView())
                }

                it("preforms an action for a specific duration in seconds so that it fades the track in") {
                    let action = mockNode.invocations[0].params?[0] as! SKAction
                    expect(action.duration).to(beCloseTo(1.8))
                }
            }
        }
    }
}

class Invocation {
    var name: String
    var params: [Any]?

    init(name: String, params: [Any]? = nil) {
        self.name = name
        self.params = params
    }
}

class MockSKNode: SKNode {
    var invocations = [Invocation]()

    override func run(_ action: SKAction) {
        invocations.append(Invocation(name: "run", params: [action]))
    }
}
