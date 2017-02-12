//
//  q6.swift
//  Project Euler
//
//  Created by Derrick Thai on 2017-02-12.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import Foundation

// Sum Square Difference

// sum of ints = n(n - 1) / 2
// sum of squares = n(n + 1)(2n + 1) / 6
func q6(n: Int = 100) -> Int {
    let soi = (n * (n + 1) / 2)
    let sos = (n * (n + 1) * (2 * n + 1) / 6)
    return soi * soi - sos
}

