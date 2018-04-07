//
//  Foo.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 04.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation


// https://courses.cs.washington.edu/courses/cse599s/12sp/scribes/lecture12.pdf
// https://arxiv.org/pdf/cs/0408007.pdf



/*
func foo(steps: Int, count: inout [Int]) {
    
    let bandit = Bandit()
    let actionSpace = bandit.actionSpace
    
    var averageReward = 0.0
    let learningRate = 1.0
    
    var policy = [Double](repeating: 1.0/Double(actionSpace), count: actionSpace)
    var w = [Double](repeating: 1.0/Double(actionSpace), count: actionSpace)
    
    for t in 1 ... steps {
        
        let expert = randChoice(w)
        
        print("expert ", expert)

        
        
    }

    
    
    
    /*
    for t in 1 ... steps {
        let action = randChoice(policy)
        let reward = bandit.step(action)
        
        averageReward = averageReward + 1.0/Double(t) * (reward - averageReward)
        
        for i in 0 ..< actionSpace {
            if  i != action {
                w[i] -= learningRate * reward * policy[i]
            } else {
                w[i] += learningRate * reward * (1 - policy[i])
            }
        }
        
        policy = softmax(w)
        
        if action == bandit.optimalAction {
            count[t-1] += 1
        }
    }*/
}*/
