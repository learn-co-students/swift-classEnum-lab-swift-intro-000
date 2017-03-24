//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    
    case slow = 0
    case medium = 1 //remember we can use int here to compare all through to do comparisons
    case fast = 2
    
    func isFaster(thanSpeed: Speed) -> Bool {
        
        if self.rawValue >= thanSpeed.rawValue {
            return true
        } else {
            return false
        }
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
    
    //This func is comparing the speed of two animals - trex. BUt we already have a func to compare speed called isFAster(thanSpeed) which is called on this that is passing in one animal (paramter) being called on another animal (self)
    func isFaster(thanTrex: Trex) -> Bool {
       
        
        //You can't call an instance until youb add the proper tiy, that's why we have .speed at the end of our instance.
        //Here we are returning whatever our called func (isfaster()thanSpeed) is going to return
        return self.speed.isFaster(thanSpeed: thanTrex.speed)
    
    }
    
    
    func eat(otherTrex: Trex) {
        
        
        //Notice that in isFaster(thanSpeed) we just used raw value, then in isFaster(thanTrex) we had to call the prop .speed to make refernece to oour func isFatser(thanSpeed), then here, we don't need to write speed anymore becaue our func isFaster(thanTrex) already has that written for us
        if self.isFaster(thanTrex: otherTrex) {
            
            otherTrex.isAlive = false
        }
    }
    
}






