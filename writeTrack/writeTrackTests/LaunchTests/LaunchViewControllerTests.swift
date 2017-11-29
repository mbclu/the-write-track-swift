//
//  writeTrackTests.swift
//  writeTrackTests
//
//  Created by Mitch Clutter on 10/29/17.
//  Copyright © 2017 Mitch Clutter. All rights reserved.
//

import XCTest
import Nimble
import SpriteKit
import SceneKit
@testable import writeTrack

class LaunchViewControllerTests: XCTestCase {
    
    var subject: LaunchViewController!
    
    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        subject = storyboard.instantiateInitialViewController() as! LaunchViewController
    }

    func testViewDidLoadGrabsTheLaunchScene() {
        let view = subject.view as! SKView
     
        expect(view.scene?.name).to(equal("LaunchScene"))
    }

    func testLaunchSceneHasAScaleModeOfAspectFill() {
        let view = subject.view as! SKView

        expect(view.scene?.scaleMode).to(equal(SKSceneScaleMode.aspectFill))
    }
    
}
