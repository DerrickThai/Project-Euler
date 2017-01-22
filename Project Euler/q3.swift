//
//  q3.swift
//  Project Euler
//
//  Created by Derrick Thai on 2017-01-22.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import Foundation

// Largest Prime Factor
func q3(n: Int = 600851475143) -> Int {
    var cur = n
    var factor = 1
    while cur > 1 {
        factor += 1
        while cur % factor == 0 {
            cur /= factor
        }
    }
    return factor
}
