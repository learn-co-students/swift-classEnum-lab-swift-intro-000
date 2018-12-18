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
        return self.rawValue >= thanSpeed.rawValue
    }
}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

class Trex {
    var speed: Speed
    let diet: Diet
    let name: String
    let sex: Sex
    var isAlive: Bool
    
    init(name: String, sex: Sex) {
        self.speed = Speed.fast
        self.diet = Diet.meatEater
        self.isAlive = true
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex: Trex) -> Bool {
        return self.speed.isFaster(thanSpeed: thanTrex.speed)
    }
    
    func eat(otherTrex: Trex) {
        otherTrex.isAlive = false
    }
}
