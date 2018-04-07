//
//  Bandit.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 04.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation

class Bandit {
    
    let meanRewards = [0.2, -0.7, 1.8, 0.4, 1.1, -1.5, -0.2, -0.9, 0.9, -0.3]
    var actionSpace = 0
    var optimalAction = 0
    
    init() {
        actionSpace = meanRewards.count
        optimalAction = argMax(meanRewards)
    }
    
    func step(_ action: Int) -> Double {
        return randNormal(meanRewards[action], deviation: 1.0)
    }
    
    func optimalPolicy(_ action: Int) -> Double {
        return meanRewards[action]
    }
    
}
