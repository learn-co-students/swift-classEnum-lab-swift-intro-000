//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow, medium, fast
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue
    }
    // cannot use type directly, had to give internal parameter speed.
    // ternary operator would have worked, but unnecessary
    // seems like comparing with self at the front breaks the tie as being the faster one? I don't see the answer in solutions.
}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

class Trex {
    var speed = Speed.fast
    var diet = Diet.meatEater
    let sex: Sex
    let name: String
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = "Trex"
        self.sex = .male
    }
    
    func speak() -> String{
        return "ROAAAWWWWRRRR!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        return speed.isFaster(thanSpeed: trex.speed)
    }
    
    func eat(otherTrex trex: Trex) {
        if isFaster(thanTrex: trex) {
            trex.isAlive = false
        }
    }
}
