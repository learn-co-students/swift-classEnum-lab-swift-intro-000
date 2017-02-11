//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//1. First, open up Bird.swift in Xcode's code editor. You'll be making a lot of changes in this file.

//2. To complete this lab, you'll need to implement three enums. The first one should be called Speed. This enum is used for comparison and has raw values, so it should inherit from Int. It should have three cases: slow, medium, and fast. Create this enum now, in Bird.swift.

//3. Implement a method for your Speed enum called isFaster(thanSpeed:). This enum should take a Speed parameter and return true if the enum value that isFaster(thanSpeed:) is called on is faster than the parameter. For example:

//let birdSpeed = Speed.fast
//let dogSpeed = Speed.slow

//birdSpeed.isFaster(thanSpeed: dogSpeed)
// returns true


//In the case of a tie, the value that isFaster(thanSpeed:) is called on should be considered "faster" (i.e., the method should return true). Like so,

enum Speed: Int {
    case slow, medium, fast
    
    func isFaster(thenSpeed:Speed) -> Bool{
        return self.rawValue >= thenSpeed.rawValue
    }
}

//4. Next, create an enum called Diet. (This enum does not need to do any comparisons, so it does not need to have any raw values associated with it.) The cases for Diet should be meatEater and vegetarian.

//5. Then create an enum called Sex. The cases of this enum should be male and female.

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female
}

//6. Create a new class called Trex in Bird.swift.

class Trex {
    var speed:Speed = Speed.fast
    let diet:Diet = Diet.meatEater
    var name:String = ""
    var sex:Sex
    var isAlive:Bool = true
    
    init(name:String, sex:Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex:Trex) -> Bool{
        return self.speed.rawValue >= trex.speed.rawValue
    }
    
    func eat(otherTrex trex:Trex) {
        guard self.speed.rawValue > trex.speed.rawValue else {return self.isAlive = false}
        
        return trex.isAlive = false
        }
    }


//7. Add a stored property called speed to your Trex class. This property should be of type Speed and should initially be set to Speed.fast.

//8. Add a stored property called diet to your Trex class. This property should be of type Diet and should be set to Diet.meatEater.

//9. Add a property called name of type String to Trex.

//10. Add a property called sex of type Sex to Trex.

//11. Add a property called isAlive of type Bool to Trex. This should initially be set to true.

//12. Create an initializer for Trex. This initializer should take two parameters, name and sex, and assign those parameters to the corresponding properties.

//13. Create a method called speak(). This method should return the string "ROAAAWWWWRRRRR!!!!!!".

//14. Create a method called isFaster(thanTrex:). This method should take one parameter of type Trex called trex. It should return true if the instance of Trex which is calling on this method is called is faster than the parameter passed in.
//15. Create a method called eat(otherTrex:). This method should take one parameter of type Trex called trex. If the instance of Trex which calls on this method is faster than the parameter that is passed in, it should "eat" the other Trex (by setting the other Trex's isAlive property to false).
//That's it! Try running the tests again. This time, they should pass. If they don't, take a look at these directions again and make sure you implemented everything properly, and keeping hammering away until the tests do pass!/**/*/
