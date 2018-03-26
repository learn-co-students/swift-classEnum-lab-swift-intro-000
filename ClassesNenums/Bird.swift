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
        return self.rawValue >= thanSpeed.rawValue ? true : false
    }
}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

class Trex {
    
    
    // MARK: - Property
    
    var speed: Speed = .fast
    var diet: Diet = .meatEater
    var name: String
    var sex: Sex
    var isAlive: Bool = true
    
    
    // MARK: - init
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    
    // MARK: - method
    
    func isFaster(thanTrex: Trex) -> Bool {
        return self.speed.rawValue > thanTrex.speed.rawValue ? true : false
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func eat(otherTrex: Trex) -> Bool {
        var returnValue = false
        if self.speed.rawValue >= otherTrex.speed.rawValue {
            otherTrex.isAlive = false
            returnValue = true
        } else {
            otherTrex.isAlive = true
            returnValue = false
        }
        return returnValue
    }
    
}



