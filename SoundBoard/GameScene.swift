//
//  GameScene.swift
//  SoundBoard
//
//  Created by Cam  on 2016-12-20.
//  Copyright © 2016 Cam . All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.size = self.frame.size
        background.zPosition = -1
        addChild(background)
       
        // create a sprite / button
        let bass = SKSpriteNode (imageNamed: "Button")
        bass.position = CGPoint(x: size.width/2, y: 500)
        bass.setScale (0.4)
        addChild(bass)
        
        
        // other button
        let censor = SKSpriteNode (imageNamed: "PlayButton")
        censor.position = CGPoint(x: size.width/2, y: 1000)
        censor.setScale (0.4)
        addChild(censor)
        
    }
    
    // detect touch
 
    
    
}



























