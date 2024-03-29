//
//  Point Tests.swift
//
//
//  Created by The Northstar✨ System on 2023-10-26.
//

import XCTest
import RectangleTools



final class Point_Tests: XCTestCase {
    
    func testPointToPointDistance() {
        XCTAssertEqual(CGPoint(x: 0, y: 0).distance(to: CGPoint(x: 1, y: 1)), sqrt(2))
        XCTAssertEqual(CGPoint(x: 0, y: 0).distance(to: CGPoint(x: -1, y: 1)), sqrt(2))
        XCTAssertEqual(CGPoint(x: 0, y: 0).distance(to: CGPoint(x: 1, y: -1)), sqrt(2))
        XCTAssertEqual(CGPoint(x: 0, y: 0).distance(to: CGPoint(x: -1, y: -1)), sqrt(2))
    }
    
    
    func testSizeExtremitiesDistance() {
        var cgSize = CGSize(width: 1, height: 1)
        XCTAssertEqual(cgSize.minXminY().distance(to: cgSize.maxXmaxY()), sqrt(2))
        
        cgSize = CGSize(width: -1, height: 1)
        XCTAssertEqual(cgSize.minXminY().distance(to: cgSize.maxXmaxY()), sqrt(2))
        
        cgSize = CGSize(width: 1, height: -1)
        XCTAssertEqual(cgSize.minXminY().distance(to: cgSize.maxXmaxY()), sqrt(2))
        
        cgSize = CGSize(width: -1, height: -1)
        XCTAssertEqual(cgSize.minXminY().distance(to: cgSize.maxXmaxY()), sqrt(2))
    }
    
    
    func testRectExtremitiesDistance() {
        var cgRect = CGRect(x: 0, y: 0, width: 1, height: 1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
        
        cgRect = CGRect(x: 0, y: 0, width: -1, height: 1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
        
        cgRect = CGRect(x: 0, y: 0, width: 1, height: -1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
        
        cgRect = CGRect(x: 0, y: 0, width: -1, height: -1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
        
        
        cgRect = CGRect(x: .random(in: -1000 ... 1000), y: .random(in: -1000 ... 1000), width: 1, height: 1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
        
        cgRect = CGRect(x: .random(in: -1000 ... 1000), y: .random(in: -1000 ... 1000), width: -1, height: 1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
        
        cgRect = CGRect(x: .random(in: -1000 ... 1000), y: .random(in: -1000 ... 1000), width: 1, height: -1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
        
        cgRect = CGRect(x: .random(in: -1000 ... 1000), y: .random(in: -1000 ... 1000), width: -1, height: -1)
        XCTAssertEqual(cgRect.minXminY.distance(to: cgRect.maxXmaxY), sqrt(2))
    }
    
    
    func testMagnitude() {
        // https://www.wolframalpha.com/input?i=distance+from+%28-2%2C-1%29+to+%285%2C6%29
        XCTAssertEqual(CIVector(x: -2, y: -1, z: 5, w: 6).magnitude, 7 * sqrt(2))
    }
}
