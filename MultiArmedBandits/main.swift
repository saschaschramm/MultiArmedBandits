//
//  main.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 04.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation

func runGradientAlgorithm() {
    let steps = 1000
    let runs = 2000
    var optimalActionCount = [Int](repeating: 0, count: steps)
    
    for _ in 0 ..< runs {
        gradientAlgorithm(steps: steps, count: &optimalActionCount)
    }
    
    for i in 0 ..< steps {
        if i % 100 == 0 {
            print(String(format: "%i: %f", i, Double(optimalActionCount[i])/Double(runs)))
        }
    }
}

runGradientAlgorithm()
