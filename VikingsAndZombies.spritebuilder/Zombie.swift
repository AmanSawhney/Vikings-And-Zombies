//
//  Zombie.swift
//  VikingsAndZombies
//
//  Created by Gagandeep Sawhney on 7/7/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

enum sideOfZombie {
    case Left, Right
}

class Zombie: CCSprite {
    
    func didLoadFromCCB(){
        self.scale = 0.8
    }
    func death() {
        animationManager.runAnimationsForSequenceNamed("DeathAnimation")
        self.zOrder -= 2
        self.physicsBody.sensor = true
        
    }
    func remove(){
        if animationManager.runningSequenceName != "DeathAnimation" {
            removeFromParent()
        }
    }
    
    
}
