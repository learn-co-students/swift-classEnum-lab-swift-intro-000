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
        var isItFaster = false
        if self.rawValue >= thanSpeed.rawValue {
            isItFaster = true
        }
        return isItFaster
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
    var name: String = "Trex"
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
        var trexIsFaster = true
        if trex.speed.rawValue >= self.speed.rawValue {
            trexIsFaster = true
        }
        return trexIsFaster
    }
    
    func eat(otherTrex trex: Trex) {
        if self.speed.rawValue > trex.speed.rawValue {
            trex.isAlive = false
        } else {
            trex.isAlive = true
        }
    }
}





