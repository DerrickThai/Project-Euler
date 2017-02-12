//
//  q5.swift
//  Project Euler
//
//  Created by Derrick Thai on 2017-02-12.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import Foundation

// Smallest Multiple
func q5(n: Int = 20) -> Int {
    return Array(1...n).reduce(1, { acc, next in
        return lcm(acc, next)
    })
}

// Euclidean algo
func gcd(_ x: Int, _ y: Int) -> Int {
    return y == 0 ? x : gcd(y, x % y)
}

func lcm(_ x: Int, _ y: Int) -> Int {
    return x * y / gcd(x, y)
}
