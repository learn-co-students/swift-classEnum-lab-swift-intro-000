//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


enum Speed : String {
    case slow = "slow", medium = "medium", fast = "fast"

    func isFaster(thanSpeed: Speed) -> Bool {
        if (thanSpeed.rawValue == "slow" || self.rawValue == "fast" ){
            return true //includes ties
        } else {
            return false //includes ties
        }
    }
    
}

enum Diet : String {
    case meatEater = "meatEater", vegetarian = "vegetarian"
}

enum Sex : String{
    case male = "male", female = "female"
}





class Trex{
    var speed : Speed = Speed.fast
    var diet : Diet = Diet.meatEater
    var name : String
    var sex : Sex
    var isAlive : Bool = true
    
    init(name : String, sex : Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak()-> String{
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex: Trex) -> Bool{
        
        return speed.isFaster(thanSpeed: thanTrex.speed)
    }
    
    func eat(otherTrex: Trex) {
        if self.isFaster(thanTrex: otherTrex){
            isAlive = true
            otherTrex.isAlive = false
        } else {
            isAlive = false
        }
    }
    
}
