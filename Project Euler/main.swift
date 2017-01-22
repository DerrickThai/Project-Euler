//
//  main.swift
//  Project Euler
//
//  Created by Derrick Thai on 2017-01-22.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import Foundation

let start = DispatchTime.now()
print (q4())
let end = DispatchTime.now()

print ("\(Double (end.uptimeNanoseconds - start.uptimeNanoseconds) / 1000000) ms")
