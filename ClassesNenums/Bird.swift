//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 0
    case medium = 1
    case fast = 2
    
    func isFaster(thanSpeed: Speed) -> Bool {
        return self.rawValue >= thanSpeed.rawValue
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
    var speed = Speed.fast
    var diet = Diet.meatEater
    let name: String
    let sex: Sex
    var isAlive = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        return speed.rawValue > trex.speed.rawValue
    }
    
    func eat(otherTrex trex: Trex) {
        if self.isFaster(thanTrex: trex) {
            trex.isAlive = false
        }
    }
    
    
    
}






