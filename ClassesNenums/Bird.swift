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
    var speed: Speed = .fast //defined as Speed type, then can use shorter dot syntax
    var diet: Diet = .meatEater
    var name: String = "Trex"
    var sex: Sex = .male
    var isAlive: Bool = true
    
    //initializer
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        return speed.isFaster(thanSpeed: trex.speed)//the object calling's speed will be extracted and then compared
    }
    func eat(otherTrex trex: Trex) {
        if speed.isFaster(thanSpeed: trex.speed) {
            trex.isAlive = false
        }
    }
    
    
}






