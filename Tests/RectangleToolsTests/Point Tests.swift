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
        XCTAssertEqual(CGPoint(x: 0, y: 0).distance(to: CGPoint(x: 1, y: -1),), sqrt(2))
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
        #if canImport(CoreImage)
        XCTAssertEqual(CIVector(x: -2, y: -1, z: 5, w: 6).magnitude, 7 * sqrt(2))
        #endif
    }
    
    
    func testPointOffset() {
        // Basics
        XCTAssertEqual(CGPoint(x: 0, y: 0).offset(dx: 10, dy: 20), .init(x: 10, y: 20))
        XCTAssertEqual(CGPoint(x: 0, y: 0).offset(dx: -10, dy: -20), .init(x: -10, y: -20))
        
        XCTAssertEqual(CGPoint.zero.offset(by: CGPoint(x: 10, y: 20)), .init(x: 10, y: 20))
        XCTAssertEqual(CGPoint.zero + CGPoint(x: 10, y: 20), .init(x: 10, y: 20))
        XCTAssertEqual(CGPoint.zero.offset(by: CGPoint(x: -10, y: -20)), .init(x: -10, y: -20))
        XCTAssertEqual(CGPoint.zero + CGPoint(x: -10, y: -20), .init(x: -10, y: -20))
        
        
        // Fuzzing
        for _ in 0 ..< 20 {
            let point = CGPoint(x: .random(in: -1000 ... 1000), y: .random(in: -1000 ... 1000))
            let offset = CGPoint(x: .random(in: -1000 ... 1000), y: .random(in: -1000 ... 1000))
            let expected = CGPoint(x: point.x + offset.x, y: point.y + offset.y)
            
            XCTAssertEqual(point.offset(dx: offset.x, dy: offset.y), expected)
            XCTAssertEqual(point.offset(by: offset), expected)
            XCTAssertEqual(point + offset, expected)
        }
        
        // LLM-generated tests
        do {
            // Zero offset preserves the point
            XCTAssertEqual(CGPoint(x: 5, y: -3).offset(dx: 0, dy: 0), CGPoint(x: 5, y: -3))
            XCTAssertEqual(CGPoint(x: 5, y: -3).offset(by: CGPoint.zero), CGPoint(x: 5, y: -3))
            XCTAssertEqual(CGPoint(x: 5, y: -3) + .zero, CGPoint(x: 5, y: -3))
            XCTAssertEqual(CGPoint.zero.offset(by: CGPoint(x: 0, y: 0)), CGPoint.zero)
            
            // Offset by identical point doubles coordinates
            let point = CGPoint(x: 2, y: 3)
            XCTAssertEqual(point.offset(by: point), CGPoint(x: 4, y: 6))
            XCTAssertEqual(point + point, CGPoint(x: 4, y: 6))
            
            // Offset that results in the origin
            XCTAssertEqual(CGPoint(x: -1, y: -2).offset(by: CGPoint(x: 1, y: 2)), CGPoint.zero)
            
            // Offset with negative zero (no‑op)
            XCTAssertEqual(CGPoint(x: 3, y: 4).offset(dx: -0, dy: -0), CGPoint(x: 3, y: 4))
            let minusZero = CGFloat(-0.0)
            XCTAssertEqual(CGPoint(x: 5, y: 5).offset(dx: minusZero, dy: minusZero), CGPoint(x: 5, y: 5))
            
            // Combination of positive and negative components
            XCTAssertEqual(CGPoint(x: -10, y: 10).offset(dx: 15, dy: -5), CGPoint(x: 5, y: 5))
            
            // Edge cases: infinities
            let inf = CGFloat.infinity
            let pInf = CGPoint(x: 10, y: -20).offset(dx: inf, dy: -inf)
            XCTAssertTrue(pInf.x.isInfinite)
            XCTAssertTrue(pInf.y.isInfinite && pInf.y.sign == .minus)
            
            // Edge cases: NaNs
            let nanPt = CGPoint(x: CGFloat.nan, y: .nan).offset(dx: 1, dy: 1)
            XCTAssertTrue(nanPt.x.isNaN)
            XCTAssertTrue(nanPt.y.isNaN)
            
            // Offset a point containing a NaN
            var ptWithNan = CGPoint(x: 5, y: CGFloat.nan).offset(by: CGPoint(x: 0, y: 1))
            XCTAssertTrue(ptWithNan.y.isNaN)
            ptWithNan = CGPoint(x: 5, y: CGFloat.nan) + CGPoint(x: 0, y: 1)
            XCTAssertTrue(ptWithNan.y.isNaN)
            
            // Extreme magnitude causing small additions to "snap back" to the value before addition
            let large = CGFloat.greatestFiniteMagnitude
            let ptLarge = CGPoint(x: large, y: large).offset(dx: 1, dy: -1)
            XCTAssertTrue(large == ptLarge.x)
            XCTAssertTrue(large == ptLarge.y)
            
            // Very small values (close to zero)
            let tiny = CGFloat(1e-300)
            XCTAssertEqual(CGPoint.zero.offset(dx: tiny, dy: -tiny), CGPoint(x: tiny, y: -tiny))
        }
    }
}
