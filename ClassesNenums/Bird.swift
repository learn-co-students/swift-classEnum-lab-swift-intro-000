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
    
    func isFaster(thanSpeed: Speed) -> Bool {
        if self.rawValue >= thanSpeed.rawValue {
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
    
    var speed: Speed = .fast
    var diet: Diet = .meatEater
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
    
    func isFaster(thanTrex trex:Trex) -> Bool {
        return self.speed.isFaster(thanSpeed: trex.speed)
    }
    
    func eat(otherTrex trex:Trex) -> Bool {
        if self.isFaster(thanTrex: trex) {
            trex.isAlive = false
            return true
        } else {
            return false
        }
    }
}


