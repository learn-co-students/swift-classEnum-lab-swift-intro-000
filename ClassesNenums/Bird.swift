//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 1
    case medium = 2
    case fast = 3
    func isFaster(thanSpeed speed: Speed) -> Bool {
        if self.rawValue == speed.rawValue {
            return true
        }
        return self.rawValue > speed.rawValue
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
    func isFaster(thanTrex trex: Trex) -> Bool {
        return self.speed.isFaster(thanSpeed: trex.speed)
    }
    func eat(otherTrex: Trex) {
        if self.isFaster(thanTrex: otherTrex) {
            otherTrex.isAlive = false
        }
    }
}


