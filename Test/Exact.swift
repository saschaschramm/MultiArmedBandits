//
//  Exact.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 04.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation

func expectedReward() {
    
    // q* = true reward distribution
    // pi = probability  of taking action 0
    // x = all actions
    // a = taken acionn
    
    let bandit = Bandit()
    var expectedReward = 0.0
    
    var preference = [Double](repeating: 0, count: bandit.actionSpace)
    preference[bandit.optimalAction] = 1000
    
    let policy = softmax(preference)
    
    for i in 0 ..< bandit.actionSpace {
        expectedReward += Double(policy[i]) * bandit.meanRewards[i]
    }
    
    print(String(format: "Expected reward = %f", expectedReward))
    
}



/*
class Exact {
 
}*/
