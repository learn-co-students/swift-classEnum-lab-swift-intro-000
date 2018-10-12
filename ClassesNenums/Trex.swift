//
//  Trex.swift
//  ClassesNenums
//
//  Created by Corina Bodea on 12/10/2018.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class Trex {
    
    var speed: Speed = Speed.fast
    var diet: Diet = .meatEater
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

    func isFaster(thanTrex trex: Trex) -> Bool {
        return self.speed.rawValue >= trex.speed.rawValue
    }

    func eat(otherTrex: Trex) {
        if isFaster(thanTrex: otherTrex) {
            otherTrex.isAlive = false
        }
    }
}
