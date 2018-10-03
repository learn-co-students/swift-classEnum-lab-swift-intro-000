//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 1, medium = 2, fast = 3
    
    func isFaster(thanSpeed: Speed) -> Bool {
        return thanSpeed.rawValue <= self.rawValue
    }
    
}

enum Diet {
    case meatEater
    case vegitarian
}

enum Sex {
    case male
    case female
}

class Trex {
    var speed: Speed = Speed.fast
    let diet: Diet = Diet.meatEater
    let name: String
    let sex: Sex
    var isAlive: Bool = true
    
    init (name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        return self.speed.rawValue > trex.speed.rawValue
    }
    
    func eat(otherTrex trex: Trex) -> Bool {
        if isFaster(thanTrex: trex) {
            trex.isAlive = false
            return trex.isAlive
        } else {
            return true
        }
    }
    
}




