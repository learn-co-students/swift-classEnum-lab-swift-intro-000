//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int{
    case slow = 1, medium, fast
    
    func isFaster(thanSpeed:Speed)->Bool{
        return self.rawValue >= thanSpeed.rawValue
    }
}

enum Diet{
    case meatEater, vegetarian
}

enum Sex{
    case male, female
}

class Trex{
    
    var speed:Speed = Speed.fast
    var isAlive:Bool = true

    let diet:Diet = Diet.meatEater
    let name:String
    let sex:Sex
    
    init(name:String,sex:Sex){
        self.name = name
        self.sex = sex
    }
    
    func speak()->String{
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex:Trex)->Bool{
        return self.speed.rawValue > thanTrex.speed.rawValue
    }
    
    func eat(otherTrex:Trex){
        otherTrex.isAlive = false
    }
}
