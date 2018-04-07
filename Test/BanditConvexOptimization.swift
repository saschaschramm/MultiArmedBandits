//
//  BanditConvexOptimization.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 07.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation


func banditConvexOptimizationModel() {
    
    let bandit = Bandit()
    let reward = bandit.step(1)
    
    print("reward", reward)

}
