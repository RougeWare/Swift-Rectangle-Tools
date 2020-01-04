//
//  Size Measurement Tests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-01-03.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
@testable import RectangleTools



final class SizeMeasurementTests: XCTestCase {
    
    func testMinSideLength() {
        XCTAssertEqual(4, TestSizes.intSize__4_8.minSideLength)
        XCTAssertEqual(3, TestSizes.intSize__3_4.minSideLength)
        XCTAssertEqual(3, TestSizes.intSize__n3_4.minSideLength)
        XCTAssertEqual(3, TestSizes.intSize__3_n4.minSideLength)
        
        XCTAssertEqual(4, TestSizes.uIntSize__4_8.minSideLength)
        XCTAssertEqual(3, TestSizes.uIntSize__3_4.minSideLength)
        
        XCTAssertEqual(4, TestSizes.cgSize__4_8.minSideLength)
        XCTAssertEqual(3, TestSizes.cgSize__3_4.minSideLength)
        XCTAssertEqual(3, TestSizes.cgSize__n3_4.minSideLength)
        XCTAssertEqual(3, TestSizes.cgSize__3_n4.minSideLength)
        
        XCTAssertEqual(4, TestSizes.decimalSize__4_8.minSideLength)
        XCTAssertEqual(3, TestSizes.decimalSize__3_4.minSideLength)
        XCTAssertEqual(3, TestSizes.decimalSize__n3_4.minSideLength)
        XCTAssertEqual(3, TestSizes.decimalSize__3_n4.minSideLength)
    }
    
    
    func testMaxSideLength() {
        XCTAssertEqual(8, TestSizes.intSize__4_8.maxSideLength)
        XCTAssertEqual(4, TestSizes.intSize__3_4.maxSideLength)
        XCTAssertEqual(4, TestSizes.intSize__n3_4.maxSideLength)
        XCTAssertEqual(4, TestSizes.intSize__3_n4.maxSideLength)
        
        XCTAssertEqual(8, TestSizes.uIntSize__4_8.maxSideLength)
        XCTAssertEqual(4, TestSizes.uIntSize__3_4.maxSideLength)
        
        XCTAssertEqual(8, TestSizes.cgSize__4_8.maxSideLength)
        XCTAssertEqual(4, TestSizes.cgSize__3_4.maxSideLength)
        XCTAssertEqual(4, TestSizes.cgSize__n3_4.maxSideLength)
        XCTAssertEqual(4, TestSizes.cgSize__3_n4.maxSideLength)
        
        XCTAssertEqual(8, TestSizes.decimalSize__4_8.maxSideLength)
        XCTAssertEqual(4, TestSizes.decimalSize__3_4.maxSideLength)
        XCTAssertEqual(4, TestSizes.decimalSize__n3_4.maxSideLength)
        XCTAssertEqual(4, TestSizes.decimalSize__3_n4.maxSideLength)
    }
    
    
    func testArea() {
        XCTAssertEqual(32, TestSizes.intSize__4_8.area)
        XCTAssertEqual(12, TestSizes.intSize__3_4.area)
        XCTAssertEqual(12, TestSizes.intSize__n3_4.area)
        XCTAssertEqual(12, TestSizes.intSize__3_n4.area)
        
        XCTAssertEqual(32, TestSizes.uIntSize__4_8.area)
        XCTAssertEqual(12, TestSizes.uIntSize__3_4.area)
        
        XCTAssertEqual(32, TestSizes.cgSize__4_8.area)
        XCTAssertEqual(12, TestSizes.cgSize__3_4.area)
        XCTAssertEqual(12, TestSizes.cgSize__n3_4.area)
        XCTAssertEqual(12, TestSizes.cgSize__3_n4.area)
        
        XCTAssertEqual(32, TestSizes.decimalSize__4_8.area)
        XCTAssertEqual(12, TestSizes.decimalSize__3_4.area)
        XCTAssertEqual(12, TestSizes.decimalSize__n3_4.area)
        XCTAssertEqual(12, TestSizes.decimalSize__3_n4.area)
    }
    
    
    
    static let allTests = [
        ("testMinSideLength", testMinSideLength),
        ("testMaxSideLength", testMaxSideLength),
        ("testArea", testArea),
    ]
}
