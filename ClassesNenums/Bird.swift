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
       return self.rawValue >= speed.rawValue
    }
}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

class Trex {
    
    var speed: Speed = .fast
    var diet: Diet = .meatEater
    
    let name: String
    let sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        return self.speed.rawValue >= trex.speed.rawValue
    }
    
    func eat(otherTrex trex: Trex) {
        if self.isFaster(thanTrex: trex) {
            trex.isAlive = false
        }
    }
}



//12. Create an initializer for Trex. This initializer should take two parameters, name and sex, and assign those parameters to the corresponding properties.
//
//13. Create a method called speak(). This method should return the string "ROAAAWWWWRRRRR!!!!!!".
//
//14. Create a method called isFaster(thanTrex:). This method should take one parameter of type Trex called trex. It should return true if the instance of Trex which is calling on this method is called is faster than the parameter passed in.
//15. Create a method called eat(otherTrex:). This method should take one parameter of type Trex called trex. If the instance of Trex which calls on this method is faster than the parameter that is passed in, it should "eat" the other Trex (by setting the other Trex's isAlive property to false).
//That's it! Try running the tests again. This time, they should pass. If they don't, take a look at these directions again and make sure you implemented everything properly, and keeping hammering away until the tests do pass!



