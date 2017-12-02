//
//  LaunchSceneTests.swift
//  writeTrackTests
//
//  Created by Mitch Clutter on 12/1/17.
//  Copyright © 2017 Mitch Clutter. All rights reserved.
//

import XCTest
import Nimble
import SpriteKit
@testable import writeTrack

class LaunchSceneTests: XCTestCase {

    var subject: LaunchScene!

    override func setUp() {
        super.setUp()

        subject = SKScene(fileNamed: "LaunchScene") as! LaunchScene
    }

    func testWhenMovedToTheLaunchSceneHasATrackNode() {
        subject.didMove(to: SKView())

        expect(self.subject.track).toNot(beNil())
    }
}
