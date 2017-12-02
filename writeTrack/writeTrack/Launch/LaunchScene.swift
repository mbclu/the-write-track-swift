//
//  GameScene.swift
//  writeTrack
//
//  Created by Mitch Clutter on 10/29/17.
//  Copyright © 2017 Mitch Clutter. All rights reserved.
//

import SpriteKit
import GameplayKit

class LaunchScene: SKScene {
    
    var track : SKNode?

    override func sceneDidLoad() {
        if let track = self.childNode(withName: "track") {
            self.track = track
        }
    }
    
    override func didMove(to view: SKView) {
        self.track?.run(SKAction.fadeIn(withDuration: 1.8))
        super.didMove(to: view)
    }

}
