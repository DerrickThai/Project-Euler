//
//  q4.swift
//  Project Euler
//
//  Created by Derrick Thai on 2017-01-22.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import Foundation

// Largest Palindrome Product
func q4(digits: Int) -> Int {
    let max = power(base: 10, exp: digits)
    
    let palindromes = ((max / 10)...(max - 1)).reversed()
        .map{ String ($0) }
        .map{ $0 + String($0.characters.reversed()) }
        .map{ Int($0)! }
    
    for n in palindromes {
        var x = max - 1
        while n / x < max {
            if n % x == 0 {
                return n
            }
            x -= 1
        }
    }
    return -1
}

func power(base: Int, exp: Int) -> Int {
    var res = 1
    for _ in 1...exp {
        res *= base
    }
    return res
}
