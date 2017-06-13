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
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        var answer: Bool
        if self.rawValue >= speed.rawValue {
            answer = true
        } else {
            answer = false
        }
        return answer
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
        var answer: Bool = false
        if self.speed.rawValue > trex.speed.rawValue {
            answer = true
        }
        return answer
    }
    
    func eat(otherTrex trex: Trex) {
        if self.isFaster(thanTrex: trex) == true {
            trex.isAlive = false
        }
    }
}

