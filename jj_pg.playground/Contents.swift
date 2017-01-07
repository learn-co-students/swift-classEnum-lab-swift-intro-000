//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Speed: Int {
    
    case slow = 1, medium, fast
    
    
    func isFaster(thanSpeed: Speed) -> Bool {
        return self.rawValue >= thanSpeed.rawValue

 }
}
var jj = Speed.slow.rawValue
var jj2 = Speed.fast.hashValue
var jj3 = Speed.fast.rawValue
var jj4 = Speed(rawValue: 3)

    


let birdSpeed = Speed.medium
let dogSpeed = Speed.fast

var test = birdSpeed.isFaster(thanSpeed: dogSpeed)
print("\(test)")

enum Diet {
    
    case meatEater
    case vegetarian
    
}

enum Sex{
    
    case male, female
}



