//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed:Int {
    
    case slow = 1,medium,fast
    
    func isFaster(thanSpeed speed:Speed) -> Bool {
        
        if self.rawValue > speed.rawValue {
            return true
        }
        return false
    }
}

enum Diet {
    
    case meatEater, vegetarian
}

enum Sex {
    case male,female
}



class Trex {
    
    var speed:Speed = .fast
    var diet:Diet = .meatEater
    let name:String
    let sex:Sex
    var isAlive:Bool = true
    
    init(name:String,sex:Sex) {
        self.name = name
        self.sex = sex
    }
    
    
    func isFaster(thanTrex trex:Trex) -> Bool {
        
        if self.speed.rawValue > trex.speed.rawValue {
            return true
        }
        return false
    }
    
    func speak() -> String {
        
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func eat(otherTrex trex:Trex) {
        
        if self.speed.rawValue > trex.speed.rawValue {
            trex.isAlive = false
        }
    }
}























