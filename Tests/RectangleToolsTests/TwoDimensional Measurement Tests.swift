//
//  Size Measurement Tests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-01-03.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
@testable import RectangleTools



final class TwoDimensionalMeasurementTests: XCTestCase {
    
    func testAspectRatio() {
        XCTAssertEqual(0.5, TestSizes.intSize__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.intSize__3_4.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.intSize__n3_4.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.intSize__3_n4.aspectRatio())
        
        XCTAssertEqual(0.5, TestSizes.uIntSize__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.uIntSize__3_4.aspectRatio())
        
        XCTAssertEqual(0.5, TestSizes.cgSize__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.cgSize__3_4.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.cgSize__n3_4.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.cgSize__3_n4.aspectRatio())
        
        XCTAssertEqual(0.5, TestSizes.decimalSize__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.decimalSize__3_4.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.decimalSize__n3_4.aspectRatio())
        XCTAssertEqual(0.75, TestSizes.decimalSize__3_n4.aspectRatio())
        
        
        XCTAssertEqual(0.5, TestPoints.intPoint__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.intPoint__3_4.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.intPoint__n3_4.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.intPoint__3_n4.aspectRatio())
        
        XCTAssertEqual(0.5, TestPoints.uIntPoint__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.uIntPoint__3_4.aspectRatio())
        
        XCTAssertEqual(0.5, TestPoints.cgPoint__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.cgPoint__3_4.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.cgPoint__n3_4.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.cgPoint__3_n4.aspectRatio())
        
        XCTAssertEqual(0.5, TestPoints.decimalPoint__4_8.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.decimalPoint__3_4.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.decimalPoint__n3_4.aspectRatio())
        XCTAssertEqual(0.75, TestPoints.decimalPoint__3_n4.aspectRatio())
    }
    
    
    func testGreaterThanZero() {
        
        XCTAssertEqual(IntSize(width: 4, height: 8), TestSizes.intSize__4_8.greaterThanZero)
        XCTAssertEqual(IntSize(width: 3, height: 4), TestSizes.intSize__3_4.greaterThanZero)
        XCTAssertEqual(IntSize(width: 1, height: 4), TestSizes.intSize__n3_4.greaterThanZero)
        XCTAssertEqual(IntSize(width: 3, height: 1), TestSizes.intSize__3_n4.greaterThanZero)
        
        XCTAssertEqual(UIntSize(width: 4, height: 8), TestSizes.uIntSize__4_8.greaterThanZero)
        XCTAssertEqual(UIntSize(width: 3, height: 4), TestSizes.uIntSize__3_4.greaterThanZero)
        
        XCTAssertEqual(CGSize(width: 4, height: 8), TestSizes.cgSize__4_8.greaterThanZero)
        XCTAssertEqual(CGSize(width: 3, height: 4), TestSizes.cgSize__3_4.greaterThanZero)
        XCTAssertEqual(CGSize(width: 1, height: 4), TestSizes.cgSize__n3_4.greaterThanZero)
        XCTAssertEqual(CGSize(width: 3, height: 1), TestSizes.cgSize__3_n4.greaterThanZero)
        
        XCTAssertEqual(DecimalSize(width: 4, height: 8), TestSizes.decimalSize__4_8.greaterThanZero)
        XCTAssertEqual(DecimalSize(width: 3, height: 4), TestSizes.decimalSize__3_4.greaterThanZero)
        XCTAssertEqual(DecimalSize(width: 1, height: 4), TestSizes.decimalSize__n3_4.greaterThanZero)
        XCTAssertEqual(DecimalSize(width: 3, height: 1), TestSizes.decimalSize__3_n4.greaterThanZero)
        
        
        XCTAssertEqual(IntPoint(x: 4, y: 8), TestPoints.intPoint__4_8.greaterThanZero)
        XCTAssertEqual(IntPoint(x: 3, y: 4), TestPoints.intPoint__3_4.greaterThanZero)
        XCTAssertEqual(IntPoint(x: 1, y: 4), TestPoints.intPoint__n3_4.greaterThanZero)
        XCTAssertEqual(IntPoint(x: 3, y: 1), TestPoints.intPoint__3_n4.greaterThanZero)
        
        XCTAssertEqual(UIntPoint(x: 4, y: 8), TestPoints.uIntPoint__4_8.greaterThanZero)
        XCTAssertEqual(UIntPoint(x: 3, y: 4), TestPoints.uIntPoint__3_4.greaterThanZero)
        
        XCTAssertEqual(CGPoint(x: 4, y: 8), TestPoints.cgPoint__4_8.greaterThanZero)
        XCTAssertEqual(CGPoint(x: 3, y: 4), TestPoints.cgPoint__3_4.greaterThanZero)
        XCTAssertEqual(CGPoint(x: 1, y: 4), TestPoints.cgPoint__n3_4.greaterThanZero)
        XCTAssertEqual(CGPoint(x: 3, y: 1), TestPoints.cgPoint__3_n4.greaterThanZero)
        
        XCTAssertEqual(DecimalPoint(x: 4, y: 8), TestPoints.decimalPoint__4_8.greaterThanZero)
        XCTAssertEqual(DecimalPoint(x: 3, y: 4), TestPoints.decimalPoint__3_4.greaterThanZero)
        XCTAssertEqual(DecimalPoint(x: 1, y: 4), TestPoints.decimalPoint__n3_4.greaterThanZero)
        XCTAssertEqual(DecimalPoint(x: 3, y: 1), TestPoints.decimalPoint__3_n4.greaterThanZero)
    }
    
    
    func testMinMeasurement() {
        
        XCTAssertEqual(4, TestSizes.intSize__4_8.minMeasurement)
        XCTAssertEqual(3, TestSizes.intSize__3_4.minMeasurement)
        XCTAssertEqual(-3, TestSizes.intSize__n3_4.minMeasurement)
        XCTAssertEqual(-4, TestSizes.intSize__3_n4.minMeasurement)
        
        XCTAssertEqual(4, TestSizes.uIntSize__4_8.minMeasurement)
        XCTAssertEqual(3, TestSizes.uIntSize__3_4.minMeasurement)
        
        XCTAssertEqual(4, TestSizes.cgSize__4_8.minMeasurement)
        XCTAssertEqual(3, TestSizes.cgSize__3_4.minMeasurement)
        XCTAssertEqual(-3, TestSizes.cgSize__n3_4.minMeasurement)
        XCTAssertEqual(-4, TestSizes.cgSize__3_n4.minMeasurement)
        
        XCTAssertEqual(4, TestSizes.decimalSize__4_8.minMeasurement)
        XCTAssertEqual(3, TestSizes.decimalSize__3_4.minMeasurement)
        XCTAssertEqual(-3, TestSizes.decimalSize__n3_4.minMeasurement)
        XCTAssertEqual(-4, TestSizes.decimalSize__3_n4.minMeasurement)
        
        
        XCTAssertEqual(4, TestPoints.intPoint__4_8.minMeasurement)
        XCTAssertEqual(3, TestPoints.intPoint__3_4.minMeasurement)
        XCTAssertEqual(-3, TestPoints.intPoint__n3_4.minMeasurement)
        XCTAssertEqual(-4, TestPoints.intPoint__3_n4.minMeasurement)
        
        XCTAssertEqual(4, TestPoints.uIntPoint__4_8.minMeasurement)
        XCTAssertEqual(3, TestPoints.uIntPoint__3_4.minMeasurement)
        
        XCTAssertEqual(4, TestPoints.cgPoint__4_8.minMeasurement)
        XCTAssertEqual(3, TestPoints.cgPoint__3_4.minMeasurement)
        XCTAssertEqual(-3, TestPoints.cgPoint__n3_4.minMeasurement)
        XCTAssertEqual(-4, TestPoints.cgPoint__3_n4.minMeasurement)
        
        XCTAssertEqual(4, TestPoints.decimalPoint__4_8.minMeasurement)
        XCTAssertEqual(3, TestPoints.decimalPoint__3_4.minMeasurement)
        XCTAssertEqual(-3, TestPoints.decimalPoint__n3_4.minMeasurement)
        XCTAssertEqual(-4, TestPoints.decimalPoint__3_n4.minMeasurement)
    }
    
    
    func testMaxMeasurement() {
        
        XCTAssertEqual(8, TestSizes.intSize__4_8.maxMeasurement)
        XCTAssertEqual(4, TestSizes.intSize__3_4.maxMeasurement)
        XCTAssertEqual(4, TestSizes.intSize__n3_4.maxMeasurement)
        XCTAssertEqual(3, TestSizes.intSize__3_n4.maxMeasurement)
        
        XCTAssertEqual(8, TestSizes.uIntSize__4_8.maxMeasurement)
        XCTAssertEqual(4, TestSizes.uIntSize__3_4.maxMeasurement)
        
        XCTAssertEqual(8, TestSizes.cgSize__4_8.maxMeasurement)
        XCTAssertEqual(4, TestSizes.cgSize__3_4.maxMeasurement)
        XCTAssertEqual(4, TestSizes.cgSize__n3_4.maxMeasurement)
        XCTAssertEqual(3, TestSizes.cgSize__3_n4.maxMeasurement)
        
        XCTAssertEqual(8, TestSizes.decimalSize__4_8.maxMeasurement)
        XCTAssertEqual(4, TestSizes.decimalSize__3_4.maxMeasurement)
        XCTAssertEqual(4, TestSizes.decimalSize__n3_4.maxMeasurement)
        XCTAssertEqual(3, TestSizes.decimalSize__3_n4.maxMeasurement)
        
        
        XCTAssertEqual(8, TestPoints.intPoint__4_8.maxMeasurement)
        XCTAssertEqual(4, TestPoints.intPoint__3_4.maxMeasurement)
        XCTAssertEqual(4, TestPoints.intPoint__n3_4.maxMeasurement)
        XCTAssertEqual(3, TestPoints.intPoint__3_n4.maxMeasurement)
        
        XCTAssertEqual(8, TestPoints.uIntPoint__4_8.maxMeasurement)
        XCTAssertEqual(4, TestPoints.uIntPoint__3_4.maxMeasurement)
        
        XCTAssertEqual(8, TestPoints.cgPoint__4_8.maxMeasurement)
        XCTAssertEqual(4, TestPoints.cgPoint__3_4.maxMeasurement)
        XCTAssertEqual(4, TestPoints.cgPoint__n3_4.maxMeasurement)
        XCTAssertEqual(3, TestPoints.cgPoint__3_n4.maxMeasurement)
        
        XCTAssertEqual(8, TestPoints.decimalPoint__4_8.maxMeasurement)
        XCTAssertEqual(4, TestPoints.decimalPoint__3_4.maxMeasurement)
        XCTAssertEqual(4, TestPoints.decimalPoint__n3_4.maxMeasurement)
        XCTAssertEqual(3, TestPoints.decimalPoint__3_n4.maxMeasurement)
    }
    
    
    func testProduct() {
        
        XCTAssertEqual(32, TestSizes.intSize__4_8.product)
        XCTAssertEqual(12, TestSizes.intSize__3_4.product)
        XCTAssertEqual(-12, TestSizes.intSize__n3_4.product)
        XCTAssertEqual(-12, TestSizes.intSize__3_n4.product)
        
        XCTAssertEqual(32, TestSizes.uIntSize__4_8.product)
        XCTAssertEqual(12, TestSizes.uIntSize__3_4.product)
        
        XCTAssertEqual(32, TestSizes.cgSize__4_8.product)
        XCTAssertEqual(12, TestSizes.cgSize__3_4.product)
        XCTAssertEqual(-12, TestSizes.cgSize__n3_4.product)
        XCTAssertEqual(-12, TestSizes.cgSize__3_n4.product)
        
        XCTAssertEqual(32, TestSizes.decimalSize__4_8.product)
        XCTAssertEqual(12, TestSizes.decimalSize__3_4.product)
        XCTAssertEqual(-12, TestSizes.decimalSize__n3_4.product)
        XCTAssertEqual(-12, TestSizes.decimalSize__3_n4.product)
        
        
        XCTAssertEqual(32, TestPoints.intPoint__4_8.product)
        XCTAssertEqual(12, TestPoints.intPoint__3_4.product)
        XCTAssertEqual(-12, TestPoints.intPoint__n3_4.product)
        XCTAssertEqual(-12, TestPoints.intPoint__3_n4.product)
        
        XCTAssertEqual(32, TestPoints.uIntPoint__4_8.product)
        XCTAssertEqual(12, TestPoints.uIntPoint__3_4.product)
        
        XCTAssertEqual(32, TestPoints.cgPoint__4_8.product)
        XCTAssertEqual(12, TestPoints.cgPoint__3_4.product)
        XCTAssertEqual(-12, TestPoints.cgPoint__n3_4.product)
        XCTAssertEqual(-12, TestPoints.cgPoint__3_n4.product)
        
        XCTAssertEqual(32, TestPoints.decimalPoint__4_8.product)
        XCTAssertEqual(12, TestPoints.decimalPoint__3_4.product)
        XCTAssertEqual(-12, TestPoints.decimalPoint__n3_4.product)
        XCTAssertEqual(-12, TestPoints.decimalPoint__3_n4.product)
    }
    
    
    
    static let allTests = [
        ("testAspectRatio", testAspectRatio),
        ("testGreaterThanZero", testGreaterThanZero),
        ("testMinMeasurement", testMinMeasurement),
        ("testMaxMeasurement", testMaxMeasurement),
        ("testProduct", testProduct),
    ]
}
