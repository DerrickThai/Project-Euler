//
//  q4.swift
//  Project Euler
//
//  Created by Derrick Thai on 2017-01-22.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import Foundation

// Largest Palindrome Product
func q4() -> Int {
    let sixDigPalins = Array((100...999).reversed())
        .map{ String ($0) }
        .map{ $0 + String($0.characters.reversed()) }
        .map{ Int($0)! }
    
    for n in sixDigPalins {
        var x = 999
        while n / x < 1000 {
            if n % x == 0 {
                return n
            }
            x -= 1
        }
    }
    return -1
}
