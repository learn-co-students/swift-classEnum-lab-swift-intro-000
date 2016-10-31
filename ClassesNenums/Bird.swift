//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


enum Speed:Int {

    case slow = 2 , medium, fast

    func isFaster(thanSpeed:Speed)->Bool{
    
        if self.rawValue > thanSpeed.rawValue {
            return true
        }else if self.rawValue < thanSpeed.rawValue {
            return false
        }else {
            return true
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


    var speed:Speed
    var diet:Diet
    var name:String
    var sex:Sex
    var isAlive:Bool
    
    
    init(name:String,sex:Sex) {
        self.name = name
        self.sex = sex
        self.isAlive = true
        self.speed = Speed.fast
        self.diet = Diet.meatEater
    }
    
    
    func speak()->String{
    
    return "ROAAAWWWWRRRRR!!!!!!"
        
    }
    
    
    func isFaster(thanTrex trex:Trex)->Bool{
        
        return self.speed.isFaster(thanSpeed:trex.speed)
       
    }
    
    
    func eat(otherTrex trex:Trex){
    
        if self.speed.isFaster(thanSpeed:trex.speed) {
            trex.isAlive = false
        }
    }


}



