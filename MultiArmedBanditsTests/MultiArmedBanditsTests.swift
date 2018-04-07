//
//  MultiArmedBanditsTests.swift
//  MultiArmedBanditsTests
//
//  Created by Sascha Schramm on 04.04.18.
//  Copyright © 2018 Sascha Schramm. All rights reserved.
//

import XCTest

class MultiArmedBanditsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testChoose() {
        let steps = 100000
        var total = [Double](repeating: 0, count: 4)
        let probs = [0.1, 0.2, 0.3, 0.4]
        
        for _ in 0 ..< steps {
            let random = randChoice(probs)
            total[random] += 1.0
        }
        
        for i in 0 ..< total.count {
            let probEstimation = Double(total[i])/Double(steps)
            XCTAssertEqual(probs[i], probEstimation, accuracy: 0.01)
        }
    }
    
    func testRandomNormal() {
        let steps = 100000
        let mean = 0.2
        var total = 0.0
        
        for _ in 0 ..< steps {
            let random = randNormal(mean, deviation: 1.0)
            total += random
        }
        
        let meanEstimation = total/Double(steps)
        XCTAssertEqual(mean, meanEstimation, accuracy: 0.01)
    }
    
    func testSoftmax() {
        XCTAssertEqual(softmax([1,2,3]), [0.090030573170380462, 0.24472847105479764, 0.66524095577482178])
        XCTAssertEqual(softmax([1000,2000,3000]), [0.0, 0.0, 1.0])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
