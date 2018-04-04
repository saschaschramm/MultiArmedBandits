//
//  Random.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 04.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation

func randint(_ a: Int, b: Int) -> Int {
    return Int(arc4random_uniform(UInt32(b-a)))+a
}

func randNormal(_ mean: Double, deviation: Double) -> Double {
    // https://en.wikipedia.org/wiki/Box–Muller_transform
    let u1 = Double(Double(arc4random()) / Double(UINT32_MAX))
    let u2 = Double(Double(arc4random()) / Double(UINT32_MAX))
    let r2 = -2.0 * log(u1)
    let theta = 2.0 * Double.pi * u2
    return deviation * (sqrt(r2) * cos(theta)) + mean
}

private func cumsum(_ a: [Double]) -> [Double] {
    var result = [Double](repeating: 0, count: a.count)
    result[0] = a[0]
    for i in 1 ..< a.count {
        result[i] = result[i-1] + a[i]
    }
    return result
}

func randChoice(_ prob: [Double]) -> Int {
    let random = Double(Double(arc4random()) / Double(UINT32_MAX))
    var cumulatedSum = cumsum(prob)
    for i in 0 ..< cumulatedSum.count {
        if random <= cumulatedSum[i] {
            return i
        }
    }
    return 0
}
