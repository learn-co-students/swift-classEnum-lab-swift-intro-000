//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    
    static let speeds: [Speed] = [.slow, .medium, .fast]
    
    case slow, medium, fast
    
    func isFaster(thanSpeed: Speed) -> Bool {
        return self.rawValue > thanSpeed.rawValue
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
        return self.speed.rawValue > thanTrex.speed.rawValue
    }
    
    func eat(otherTrex: Trex) -> Bool {
        if isFaster(thanTrex: otherTrex) {
            otherTrex.isAlive = false
            return true
        }
        return false
    } // Done
    
}




