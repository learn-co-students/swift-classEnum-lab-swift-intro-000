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
        if self.rawValue > thanSpeed.rawValue {
            return true
        } else {
            return false
        }
    }
}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

class Trex {
    var speed: Speed = Speed.fast
    var diet: Diet = Diet.meatEater
    var name: String
    var sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex: Trex) -> Bool {
        if self.speed.rawValue > thanTrex.speed.rawValue {
            return true
        } else {
            return false
        }
    }
    
    func eat(otherTrex: Trex) {
        if self.isFaster(thanTrex: otherTrex) {
            otherTrex.isAlive = false
        }
    }
}
