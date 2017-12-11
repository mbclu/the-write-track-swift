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
    
    @objc var track: SKNode? { return childNode(withName: "track") }
    var train: SKNode? { return childNode(withName: "train") }
}
