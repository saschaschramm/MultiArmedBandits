//
//  Utilities.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 04.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation


func argMax(_ array: [Double]) -> Int {
    let maxValue = array.max()!
    let maxIndex = array.index(of: maxValue)!
    return maxIndex
}

func softmax(_ input: [Double]) -> [Double] {
    let maxInput = -input.max()!
    var sum = 0.0
    
    for i in 0 ..< input.count {
        sum += exp(input[i] + maxInput)
    }
    var output = [Double](repeating: 0, count: input.count)
    for i in 0 ..< output.count {
        output[i] = exp(input[i] + maxInput)/sum
    }
    return output
}

