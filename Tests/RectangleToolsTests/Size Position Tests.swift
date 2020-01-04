//
//  Size Position Tests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-20.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
@testable import RectangleTools



final class SizePositionTests: XCTestCase {
    
    static let allTests =
          edgeTests
        + pointTests
}



// MARK: - Edges

extension SizePositionTests {
    
    func testMinX() {
        XCTAssertEqual(TestSizes.intSize__4_8.minX, 0)
        XCTAssertEqual(TestSizes.intSize__3_4.minX, 0)
        XCTAssertEqual(TestSizes.intSize__n3_4.minX, -3)
        XCTAssertEqual(TestSizes.intSize__3_n4.minX, 0)
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.minX, 0)
        XCTAssertEqual(TestSizes.uIntSize__3_4.minX, 0)
        
        XCTAssertEqual(TestSizes.cgSize__4_8.minX, 0)
        XCTAssertEqual(TestSizes.cgSize__3_4.minX, 0)
        XCTAssertEqual(TestSizes.cgSize__n3_4.minX, -3)
        XCTAssertEqual(TestSizes.cgSize__3_n4.minX, 0)
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.minX, 0)
        XCTAssertEqual(TestSizes.decimalSize__3_4.minX, 0)
        XCTAssertEqual(TestSizes.decimalSize__n3_4.minX, -3)
        XCTAssertEqual(TestSizes.decimalSize__3_n4.minX, 0)
    }
    
    
    func testMidX() {
        XCTAssertEqual(TestSizes.intSize__4_8.midX, 2)
        XCTAssertEqual(TestSizes.intSize__3_4.midX, 1)
        XCTAssertEqual(TestSizes.intSize__n3_4.midX, -1)
        XCTAssertEqual(TestSizes.intSize__3_n4.midX, 1)
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.midX, 2)
        XCTAssertEqual(TestSizes.uIntSize__3_4.midX, 1)
        
        XCTAssertEqual(TestSizes.cgSize__4_8.midX, 2)
        XCTAssertEqual(TestSizes.cgSize__3_4.midX, 1.5)
        XCTAssertEqual(TestSizes.cgSize__n3_4.midX, -1.5)
        XCTAssertEqual(TestSizes.cgSize__3_n4.midX, 1.5)
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.midX, 2)
        XCTAssertEqual(TestSizes.decimalSize__3_4.midX, 1.5)
        XCTAssertEqual(TestSizes.decimalSize__n3_4.midX, -1.5)
        XCTAssertEqual(TestSizes.decimalSize__3_n4.midX, 1.5)
    }
    
    
    func testMaxX() {
        XCTAssertEqual(TestSizes.intSize__4_8.maxX, 4)
        XCTAssertEqual(TestSizes.intSize__3_4.maxX, 3)
        XCTAssertEqual(TestSizes.intSize__n3_4.maxX, 0)
        XCTAssertEqual(TestSizes.intSize__3_n4.maxX, 3)
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.maxX, 4)
        XCTAssertEqual(TestSizes.uIntSize__3_4.maxX, 3)
        
        XCTAssertEqual(TestSizes.cgSize__4_8.maxX, 4)
        XCTAssertEqual(TestSizes.cgSize__3_4.maxX, 3)
        XCTAssertEqual(TestSizes.cgSize__n3_4.maxX, 0)
        XCTAssertEqual(TestSizes.cgSize__3_n4.maxX, 3)
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.maxX, 4)
        XCTAssertEqual(TestSizes.decimalSize__3_4.maxX, 3)
        XCTAssertEqual(TestSizes.decimalSize__n3_4.maxX, 0)
        XCTAssertEqual(TestSizes.decimalSize__3_n4.maxX, 3)
    }
    
    
    func testMinY() {
        XCTAssertEqual(TestSizes.intSize__4_8.minY, 0)
        XCTAssertEqual(TestSizes.intSize__3_4.minY, 0)
        XCTAssertEqual(TestSizes.intSize__n3_4.minY, 0)
        XCTAssertEqual(TestSizes.intSize__3_n4.minY, -4)
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.minY, 0)
        XCTAssertEqual(TestSizes.uIntSize__3_4.minY, 0)
        
        XCTAssertEqual(TestSizes.cgSize__4_8.minY, 0)
        XCTAssertEqual(TestSizes.cgSize__3_4.minY, 0)
        XCTAssertEqual(TestSizes.cgSize__n3_4.minY, 0)
        XCTAssertEqual(TestSizes.cgSize__3_n4.minY, -4)
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.minY, 0)
        XCTAssertEqual(TestSizes.decimalSize__3_4.minY, 0)
        XCTAssertEqual(TestSizes.decimalSize__n3_4.minY, 0)
        XCTAssertEqual(TestSizes.decimalSize__3_n4.minY, -4)
    }
    
    
    func testMidY() {
        XCTAssertEqual(TestSizes.intSize__4_8.midY, 4)
        XCTAssertEqual(TestSizes.intSize__3_4.midY, 2)
        XCTAssertEqual(TestSizes.intSize__n3_4.midY, 2)
        XCTAssertEqual(TestSizes.intSize__3_n4.midY, -2)
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.midY, 4)
        XCTAssertEqual(TestSizes.uIntSize__3_4.midY, 2)
        
        XCTAssertEqual(TestSizes.cgSize__4_8.midY, 4)
        XCTAssertEqual(TestSizes.cgSize__3_4.midY, 2)
        XCTAssertEqual(TestSizes.cgSize__n3_4.midY, 2)
        XCTAssertEqual(TestSizes.cgSize__3_n4.midY, -2)
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.midY, 4)
        XCTAssertEqual(TestSizes.decimalSize__3_4.midY, 2)
        XCTAssertEqual(TestSizes.decimalSize__n3_4.midY, 2)
        XCTAssertEqual(TestSizes.decimalSize__3_n4.midY, -2)
    }
    
    
    func testMaxY() {
        XCTAssertEqual(TestSizes.intSize__4_8.maxY, 8)
        XCTAssertEqual(TestSizes.intSize__3_4.maxY, 4)
        XCTAssertEqual(TestSizes.intSize__n3_4.maxY, 4)
        XCTAssertEqual(TestSizes.intSize__3_n4.maxY, 0)
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.maxY, 8)
        XCTAssertEqual(TestSizes.uIntSize__3_4.maxY, 4)
        
        XCTAssertEqual(TestSizes.cgSize__4_8.maxY, 8)
        XCTAssertEqual(TestSizes.cgSize__3_4.maxY, 4)
        XCTAssertEqual(TestSizes.cgSize__n3_4.maxY, 4)
        XCTAssertEqual(TestSizes.cgSize__3_n4.maxY, 0)
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.maxY, 8)
        XCTAssertEqual(TestSizes.decimalSize__3_4.maxY, 4)
        XCTAssertEqual(TestSizes.decimalSize__n3_4.maxY, 4)
        XCTAssertEqual(TestSizes.decimalSize__3_n4.maxY, 0)
    }
    
    
    static let edgeTests = [
        ("testMinX", testMinX),
        ("testMidX", testMidX),
        ("testMaxX", testMaxX),
        ("testMinY", testMinY),
        ("testMidY", testMidY),
        ("testMaxY", testMaxY),
    ]
}



// MARK: - Points

extension SizePositionTests {
    
    
    func testMinXminY() {
        XCTAssertEqual(TestSizes.intSize__4_8.minXminY(), IntPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.intSize__3_4.minXminY(), IntPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.intSize__n3_4.minXminY(), IntPoint(x: -3, y: 0))
        XCTAssertEqual(TestSizes.intSize__3_n4.minXminY(), IntPoint(x: 0, y: -4))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.minXminY(), UIntPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.uIntSize__3_4.minXminY(), UIntPoint(x: 0, y: 0))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.minXminY(), CGPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.cgSize__3_4.minXminY(), CGPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.cgSize__n3_4.minXminY(), CGPoint(x: -3, y: 0))
        XCTAssertEqual(TestSizes.cgSize__3_n4.minXminY(), CGPoint(x: 0, y: -4))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.minXminY(), DecimalPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__3_4.minXminY(), DecimalPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.minXminY(), DecimalPoint(x: -3, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.minXminY(), DecimalPoint(x: 0, y: -4))
    }
    
    
    func testMinXmidY() {
        XCTAssertEqual(TestSizes.intSize__4_8.minXmidY(), IntPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.intSize__3_4.minXmidY(), IntPoint(x: 0, y: 2))
        XCTAssertEqual(TestSizes.intSize__n3_4.minXmidY(), IntPoint(x: -3, y: 2))
        XCTAssertEqual(TestSizes.intSize__3_n4.minXmidY(), IntPoint(x: 0, y: -2))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.minXmidY(), UIntPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.uIntSize__3_4.minXmidY(), UIntPoint(x: 0, y: 2))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.minXmidY(), CGPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.cgSize__3_4.minXmidY(), CGPoint(x: 0, y: 2))
        XCTAssertEqual(TestSizes.cgSize__n3_4.minXmidY(), CGPoint(x: -3, y: 2))
        XCTAssertEqual(TestSizes.cgSize__3_n4.minXmidY(), CGPoint(x: 0, y: -2))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.minXmidY(), DecimalPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__3_4.minXmidY(), DecimalPoint(x: 0, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.minXmidY(), DecimalPoint(x: -3, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.minXmidY(), DecimalPoint(x: 0, y: -2))
    }
    
    
    func testMinXmaxY() {
        XCTAssertEqual(TestSizes.intSize__4_8.minXmaxY(), IntPoint(x: 0, y: 8))
        XCTAssertEqual(TestSizes.intSize__3_4.minXmaxY(), IntPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.intSize__n3_4.minXmaxY(), IntPoint(x: -3, y: 4))
        XCTAssertEqual(TestSizes.intSize__3_n4.minXmaxY(), IntPoint(x: 0, y: 0))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.minXmaxY(), UIntPoint(x: 0, y: 8))
        XCTAssertEqual(TestSizes.uIntSize__3_4.minXmaxY(), UIntPoint(x: 0, y: 4))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.minXmaxY(), CGPoint(x: 0, y: 8))
        XCTAssertEqual(TestSizes.cgSize__3_4.minXmaxY(), CGPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.cgSize__n3_4.minXmaxY(), CGPoint(x: -3, y: 4))
        XCTAssertEqual(TestSizes.cgSize__3_n4.minXmaxY(), CGPoint(x: 0, y: 0))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.minXmaxY(), DecimalPoint(x: 0, y: 8))
        XCTAssertEqual(TestSizes.decimalSize__3_4.minXmaxY(), DecimalPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.minXmaxY(), DecimalPoint(x: -3, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.minXmaxY(), DecimalPoint(x: 0, y: 0))
    }
    
    
    func testMidXminY() {
        XCTAssertEqual(TestSizes.intSize__4_8.midXminY(), IntPoint(x: 2, y: 0))
        XCTAssertEqual(TestSizes.intSize__3_4.midXminY(), IntPoint(x: 1, y: 0))
        XCTAssertEqual(TestSizes.intSize__n3_4.midXminY(), IntPoint(x: -1, y: 0))
        XCTAssertEqual(TestSizes.intSize__3_n4.midXminY(), IntPoint(x: 1, y: -4))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.midXminY(), UIntPoint(x: 2, y: 0))
        XCTAssertEqual(TestSizes.uIntSize__3_4.midXminY(), UIntPoint(x: 1, y: 0))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.midXminY(), CGPoint(x: 2, y: 0))
        XCTAssertEqual(TestSizes.cgSize__3_4.midXminY(), CGPoint(x: 1.5, y: 0))
        XCTAssertEqual(TestSizes.cgSize__n3_4.midXminY(), CGPoint(x: -1.5, y: 0))
        XCTAssertEqual(TestSizes.cgSize__3_n4.midXminY(), CGPoint(x: 1.5, y: -4))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.midXminY(), DecimalPoint(x: 2, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__3_4.midXminY(), DecimalPoint(x: 1.5, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.midXminY(), DecimalPoint(x: -1.5, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.midXminY(), DecimalPoint(x: 1.5, y: -4))
    }
    
    
    func testMidXmidY() {
        XCTAssertEqual(TestSizes.intSize__4_8.midXmidY(), IntPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.intSize__3_4.midXmidY(), IntPoint(x: 1, y: 2))
        XCTAssertEqual(TestSizes.intSize__n3_4.midXmidY(), IntPoint(x: -1, y: 2))
        XCTAssertEqual(TestSizes.intSize__3_n4.midXmidY(), IntPoint(x: 1, y: -2))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.midXmidY(), UIntPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.uIntSize__3_4.midXmidY(), UIntPoint(x: 1, y: 2))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.midXmidY(), CGPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.cgSize__3_4.midXmidY(), CGPoint(x: 1.5, y: 2))
        XCTAssertEqual(TestSizes.cgSize__n3_4.midXmidY(), CGPoint(x: -1.5, y: 2))
        XCTAssertEqual(TestSizes.cgSize__3_n4.midXmidY(), CGPoint(x: 1.5, y: -2))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.midXmidY(), DecimalPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__3_4.midXmidY(), DecimalPoint(x: 1.5, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.midXmidY(), DecimalPoint(x: -1.5, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.midXmidY(), DecimalPoint(x: 1.5, y: -2))
    }
    
    
    func testCenter() {
        XCTAssertEqual(TestSizes.intSize__4_8.center(), IntPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.intSize__3_4.center(), IntPoint(x: 1, y: 2))
        XCTAssertEqual(TestSizes.intSize__n3_4.center(), IntPoint(x: -1, y: 2))
        XCTAssertEqual(TestSizes.intSize__3_n4.center(), IntPoint(x: 1, y: -2))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.center(), UIntPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.uIntSize__3_4.center(), UIntPoint(x: 1, y: 2))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.center(), CGPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.cgSize__3_4.center(), CGPoint(x: 1.5, y: 2))
        XCTAssertEqual(TestSizes.cgSize__n3_4.center(), CGPoint(x: -1.5, y: 2))
        XCTAssertEqual(TestSizes.cgSize__3_n4.center(), CGPoint(x: 1.5, y: -2))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.center(), DecimalPoint(x: 2, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__3_4.center(), DecimalPoint(x: 1.5, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.center(), DecimalPoint(x: -1.5, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.center(), DecimalPoint(x: 1.5, y: -2))
    }
    
    
    func testMidXmaxY() {
        XCTAssertEqual(TestSizes.intSize__4_8.midXmaxY(), IntPoint(x: 2, y: 8))
        XCTAssertEqual(TestSizes.intSize__3_4.midXmaxY(), IntPoint(x: 1, y: 4))
        XCTAssertEqual(TestSizes.intSize__n3_4.midXmaxY(), IntPoint(x: -1, y: 4))
        XCTAssertEqual(TestSizes.intSize__3_n4.midXmaxY(), IntPoint(x: 1, y: 0))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.midXmaxY(), UIntPoint(x: 2, y: 8))
        XCTAssertEqual(TestSizes.uIntSize__3_4.midXmaxY(), UIntPoint(x: 1, y: 4))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.midXmaxY(), CGPoint(x: 2, y: 8))
        XCTAssertEqual(TestSizes.cgSize__3_4.midXmaxY(), CGPoint(x: 1.5, y: 4))
        XCTAssertEqual(TestSizes.cgSize__n3_4.midXmaxY(), CGPoint(x: -1.5, y: 4))
        XCTAssertEqual(TestSizes.cgSize__3_n4.midXmaxY(), CGPoint(x: 1.5, y: 0))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.midXmaxY(), DecimalPoint(x: 2, y: 8))
        XCTAssertEqual(TestSizes.decimalSize__3_4.midXmaxY(), DecimalPoint(x: 1.5, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.midXmaxY(), DecimalPoint(x: -1.5, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.midXmaxY(), DecimalPoint(x: 1.5, y: 0))
    }
    
    
    func testMaxXminY() {
        XCTAssertEqual(TestSizes.intSize__4_8.maxXminY(), IntPoint(x: 4, y: 0))
        XCTAssertEqual(TestSizes.intSize__3_4.maxXminY(), IntPoint(x: 3, y: 0))
        XCTAssertEqual(TestSizes.intSize__n3_4.maxXminY(), IntPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.intSize__3_n4.maxXminY(), IntPoint(x: 3, y: -4))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.maxXminY(), UIntPoint(x: 4, y: 0))
        XCTAssertEqual(TestSizes.uIntSize__3_4.maxXminY(), UIntPoint(x: 3, y: 0))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.maxXminY(), CGPoint(x: 4, y: 0))
        XCTAssertEqual(TestSizes.cgSize__3_4.maxXminY(), CGPoint(x: 3, y: 0))
        XCTAssertEqual(TestSizes.cgSize__n3_4.maxXminY(), CGPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.cgSize__3_n4.maxXminY(), CGPoint(x: 3, y: -4))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.maxXminY(), DecimalPoint(x: 4, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__3_4.maxXminY(), DecimalPoint(x: 3, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.maxXminY(), DecimalPoint(x: 0, y: 0))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.maxXminY(), DecimalPoint(x: 3, y: -4))
    }
    
    
    func testMaxXmidY() {
        XCTAssertEqual(TestSizes.intSize__4_8.maxXmidY(), IntPoint(x: 4, y: 4))
        XCTAssertEqual(TestSizes.intSize__3_4.maxXmidY(), IntPoint(x: 3, y: 2))
        XCTAssertEqual(TestSizes.intSize__n3_4.maxXmidY(), IntPoint(x: 0, y: 2))
        XCTAssertEqual(TestSizes.intSize__3_n4.maxXmidY(), IntPoint(x: 3, y: -2))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.maxXmidY(), UIntPoint(x: 4, y: 4))
        XCTAssertEqual(TestSizes.uIntSize__3_4.maxXmidY(), UIntPoint(x: 3, y: 2))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.maxXmidY(), CGPoint(x: 4, y: 4))
        XCTAssertEqual(TestSizes.cgSize__3_4.maxXmidY(), CGPoint(x: 3, y: 2))
        XCTAssertEqual(TestSizes.cgSize__n3_4.maxXmidY(), CGPoint(x: 0, y: 2))
        XCTAssertEqual(TestSizes.cgSize__3_n4.maxXmidY(), CGPoint(x: 3, y: -2))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.maxXmidY(), DecimalPoint(x: 4, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__3_4.maxXmidY(), DecimalPoint(x: 3, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.maxXmidY(), DecimalPoint(x: 0, y: 2))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.maxXmidY(), DecimalPoint(x: 3, y: -2))
    }
    
    
    func testMaxXmaxY() {
        XCTAssertEqual(TestSizes.intSize__4_8.maxXmaxY(), IntPoint(x: 4, y: 8))
        XCTAssertEqual(TestSizes.intSize__3_4.maxXmaxY(), IntPoint(x: 3, y: 4))
        XCTAssertEqual(TestSizes.intSize__n3_4.maxXmaxY(), IntPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.intSize__3_n4.maxXmaxY(), IntPoint(x: 3, y: 0))
        
        XCTAssertEqual(TestSizes.uIntSize__4_8.maxXmaxY(), UIntPoint(x: 4, y: 8))
        XCTAssertEqual(TestSizes.uIntSize__3_4.maxXmaxY(), UIntPoint(x: 3, y: 4))
        
        XCTAssertEqual(TestSizes.cgSize__4_8.maxXmaxY(), CGPoint(x: 4, y: 8))
        XCTAssertEqual(TestSizes.cgSize__3_4.maxXmaxY(), CGPoint(x: 3, y: 4))
        XCTAssertEqual(TestSizes.cgSize__n3_4.maxXmaxY(), CGPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.cgSize__3_n4.maxXmaxY(), CGPoint(x: 3, y: 0))
        
        XCTAssertEqual(TestSizes.decimalSize__4_8.maxXmaxY(), DecimalPoint(x: 4, y: 8))
        XCTAssertEqual(TestSizes.decimalSize__3_4.maxXmaxY(), DecimalPoint(x: 3, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__n3_4.maxXmaxY(), DecimalPoint(x: 0, y: 4))
        XCTAssertEqual(TestSizes.decimalSize__3_n4.maxXmaxY(), DecimalPoint(x: 3, y: 0))
    }
    
    
    static let pointTests = [
        ("testMinXminY", testMinXminY),
        ("testMinXmidY", testMinXmidY),
        ("testMinXmaxY", testMinXmaxY),
        ("testMidXminY", testMidXminY),
        ("testCenter", testCenter),
        ("testMidXmidY", testMidXmidY),
        ("testMidXmaxY", testMidXmaxY),
        ("testMaxXminY", testMaxXminY),
        ("testMaxXmidY", testMaxXmidY),
        ("testMaxXmaxY", testMaxXmaxY),
    ]
}
