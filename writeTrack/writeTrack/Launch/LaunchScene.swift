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

    override func didMove(to view: SKView) {
        super.didMove(to: view)

        if let track = self.childNode(withName: "track") {
            self.track = track
            
            self.track?.run(SKAction.group([
                SKAction.fadeIn(withDuration: 2.0),
                SKAction.moveTo(y: 100.0, duration: 2.0)
                ]))
        }
    }
}
