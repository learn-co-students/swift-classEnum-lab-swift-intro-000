//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed:Int { case slow, medium, fast

    func isFaster(thanSpeed:Speed)->Bool{
        return self.rawValue >= thanSpeed.rawValue
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
    var speed = Speed.fast
    var diet = Diet.meatEater
    var name:String
    var sex:Sex
    var isAlive = true
    
    init(name:String, sex:Sex){
        self.name = name
        self.sex = sex
    }
    
    func speak()->String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex:Trex)->Bool {
        return self.speed.rawValue >  thanTrex.speed.rawValue
    }
    
    func eat(otherTrex:Trex){
        if self.isFaster(thanTrex: otherTrex){
            otherTrex.isAlive = false
        }
    }
}

