//
//  GameScene.swift
//  SoundBoard
//
//  Created by Cam  on 2016-12-20.
//  Copyright © 2016 Cam . All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    // create the variably to hold the sound effect playing function
    var playSoundAction = SKAction ()
    var PlaySoundAction2 = SKAction ()
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
        //assign action action to play sound on tap of button
        playSoundAction = SKAction.playSoundFileNamed("censor-beep-10.mp3 ", waitForCompletion: false)
        
        // Assign action to play sound on tap of other button
        playSoundAction = SKAction.playSoundFileNamed("most_annoying_sound_ever-Ethan_Buck-1557665457.wav", waitForCompletion: false)
        
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
            self.run(PlaySoundAction2)
        }
        if censor.frame.contains(touchLocation) {
            // Play sound
            self.run(playSoundAction)
        }
        
    }
    
}

























