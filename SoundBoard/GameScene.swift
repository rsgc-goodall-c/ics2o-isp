//
//  GameScene.swift
//  SoundBoard
//
//  Created by Cam  on 2016-12-20.
//  Copyright © 2016 Cam . All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    let bass = SKSpriteNode (imageNamed: "Button")
    
    let censor = SKSpriteNode (imageNamed: "PlayButton")
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.size = self.frame.size
        background.zPosition = -1
        addChild(background)
        
        // create a sprite / button
        bass.position = CGPoint(x: size.width/2, y: 500)
        bass.setScale (0.4)
        addChild(bass)
        
        
        // other button
        
        censor.position = CGPoint(x: size.width/2, y: 1000)
        censor.setScale (0.4)
        addChild(censor)
        
    }
    
    // detect touch
    
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        
        guard let touch = touches.first else {
            return
        }
        let touchLocation = touch.location(in: self)
        
        // Check for a tap inside the bass
        if bass.frame.contains(touchLocation) {
            // Play sound
            print("tapped the bass")
        }
        if censor.frame.contains(touchLocation) {
            // Play sound
            print("tapped the censor")
        }

    }
   
}

























