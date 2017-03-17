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
        guard self.rawValue > thanSpeed.rawValue else {return false}
            return true
    }

}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

class Trex {
    let diet: Diet = Diet.meatEater
    let name: String
    let sex: Sex
    var isAlive: Bool = true
    var speed: Speed = .fast
    
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
    
    func eat(otherTrex: Trex) {
        if isFaster(thanTrex: otherTrex) {
            otherTrex.isAlive = false
        }
    }
}
