//
//  Convex.swift
//  MultiArmedBandits
//
//  Created by Sascha Schramm on 07.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import Foundation


// https://v8doc.sas.com/sashtml/ormp/chap5/sect28.htm

// http://www.math.ohiou.edu/courses/math3600/lecture27.pdf


func convex() {
    
    
    /*
    for x in 0 ..< 10 {
        let y = pow(Double(x) ,2)
        print("y", y)
    }*/
    
    
    let x = 3
    let delta = 1
    let u = 0.1
    
    
    
    //let y1 = pow(Double(x1) ,2)
    //let y2 = pow(Double(x2) ,2)
    
    expectedValue()
    
}


func function(_ x: Double) -> Double {
    return pow(x,2)
}

func computeForwardDifference(_ x: Double, _ delta: Double) -> Double {
    return (function(x + delta) - function(x))/((x + delta) - x)
}

func computeBackwardDifference(_ x: Double, _ delta: Double) -> Double {
    return (function(x) - function(x - delta))/(x - (x - delta))
}

func computeCentralDifference(_ x: Double, _ delta: Double) -> Double {
    let h = x + delta - x
    return (function(x + delta) - function(x - delta))/(2*h)
}


func firstOrderDerivative(_ x: Double, _ delta: Double) -> Double {
    return (function(x + delta) - function(x))/delta
}

func approximatingDerivatives() {
    let delta: Double = 0.1
    let x = 3.0

    let forwardDifference = computeForwardDifference(x, delta)
    let backwardDifference = computeBackwardDifference(x, delta)
    let centralDifference = computeCentralDifference(x, delta)
    
    print("Forward difference ", forwardDifference)
    print("Backward difference ", backwardDifference)
    print("Central difference ", centralDifference)
    
    let bar = firstOrderDerivative(x, delta)
    print("bar ", bar)
}


func expectedValue() {
    
    var expectedValue = 0.0
    
    let range = 10
    
    let x: Double = 3.0
    let delta: Double = 0.1
    let u: Double = 0.1
    
    
    /*
    for _ in 0 ..< 3 {
        let x = randint(0, b: 10)
        
        let y = pow((Double(x) + delta * u),2)/delta * u
        
        print("x ", x)
        print("y ", y)
        
        let foo = (Double(x) - Double(y)) - (Double(x) - Double(y))
        
        print("foo", foo)

        
        //let foo = y - x
    }*/
    
    


    

    /*
    for x in -range ..< range {
        let y = pow((Double(x) + delta * u),2)/delta * u
        print(y)
        expectedValue += y
    }*/
    
    print(expectedValue/Double(range))
    
}


