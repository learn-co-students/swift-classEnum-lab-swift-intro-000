//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 1, medium, fast
    
    func isFaster(thanSpeed: Speed) -> Bool {
        if thanSpeed.rawValue <= self.rawValue {
            return true
        } else {
            return false
        }
    }
}

enum Diet {
    case meatEater
    case vegetarian
}

enum Sex {
    case male
    case female
}

class Trex {
    var speed: Speed
    var diet: Diet
    var name: String
    var sex: Sex
    var isAlive: Bool
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
        speed = Speed.fast
        diet = Diet.meatEater
        isAlive = true
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex: Trex) -> Bool {
        return self.speed.isFaster(thanSpeed: thanTrex.speed)
    }
    
    func eat(otherTrex: Trex) {
        if self.isFaster(thanTrex: otherTrex) {
            otherTrex.isAlive = false
        }
    }
}






