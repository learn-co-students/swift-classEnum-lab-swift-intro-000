//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    
    static let speeds: [Speed] = [.slow, .medium, .fast]
    
    case slow = 0
    case medium = 1
    case fast = 2
    
    func isFaster(thanSpeed: Speed) -> Bool {
        if thanSpeed == Speed.slow < Speed.medium {
            return true
        }
        return false
    }
}

enum Diet {
    case meatEater, vegetarian
}

enum sex {
    case male, female
}






