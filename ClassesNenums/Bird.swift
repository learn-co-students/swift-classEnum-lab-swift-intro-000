//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow
    case medium
    case fast
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue
    }
    
}

enum Diet: String {
    case meatEater
    case vegeterian
}

enum Sex: String {
    case male
    case female
}

class Trex {
    var speed : Speed = .fast
    let diet : Diet = .meatEater
    var name : String
    var sex : Sex
    var isAlive : Bool = true
    
    init(name:String, sex:Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        return speed.isFaster(thanSpeed: trex.speed)
    }
    
    func eat(otherTrex trex: Trex) {
        if isFaster(thanTrex: trex) {
            trex.isAlive = false
        }
    }
}

