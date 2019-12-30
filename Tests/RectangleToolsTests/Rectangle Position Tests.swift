//
//  Rectangle Position Tests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-20.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
@testable import RectangleTools



final class RectanglePositionTests: XCTestCase {
    
    /// ```
    ///  ↑
    ///  │
    /// 8┢━━━━━┓
    /// 6┃     ┃
    /// 4┃     ┃
    /// 2┃     ┃
    /// ←╄━━━━━┹───→
    ///  ↓  2  4
    /// ```
    let rect__0_0__4_8 = DecimalRectangle(x: 0, y: 0, width: 4, height: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 6│  ┏━━━━━━━━┓
    /// 5│  ┃        ┃
    /// 4│  ┃        ┃
    /// 3│  ┃        ┃
    /// 2│  ┗━━━━━━━━┛
    /// 1│
    /// ←┼───────────────→
    ///  ↓  1  2  3  4
    /// ```
    let rect__1_2__3_4 = DecimalRectangle(x: 1, y: 2, width: 3, height: 4)
    
    /// ```
    ///                 ↑
    ///                 │
    ///     ┏━━━━━━━━┓  │6
    ///     ┃        ┃  │5
    ///     ┃        ┃  │4
    ///     ┃        ┃  │3
    ///     ┗━━━━━━━━┛  │2
    ///                 │1
    /// ←───────────────┼→
    ///    -4 -3 -2 -1  ↓
    /// ```
    let rect__n1_2__n3_4 = DecimalRectangle(x: -1, y: 2, width: -3, height: 4)
    
    
    static let allTests =
          lineTests
        + pointTests
        + relativePercentTests
        + otherTests
}



// MARK: - Edges

extension RectanglePositionTests {
    
    func testMinX() {
        XCTAssertEqual(rect__0_0__4_8.minX, 0)
        XCTAssertEqual(rect__1_2__3_4.minX, 1)
        XCTAssertEqual(rect__n1_2__n3_4.minX, -4)
    }
    
    
    func testMidX() {
        XCTAssertEqual(rect__0_0__4_8.midX, 2)
        XCTAssertEqual(rect__1_2__3_4.midX, 2.5)
        XCTAssertEqual(rect__n1_2__n3_4.midX, -2.5)
    }
    
    
    func testMaxX() {
        XCTAssertEqual(rect__0_0__4_8.maxX, 4)
        XCTAssertEqual(rect__1_2__3_4.maxX, 4)
        XCTAssertEqual(rect__n1_2__n3_4.maxX, -1)
    }
    
    
    func testMinY() {
        XCTAssertEqual(rect__0_0__4_8.minY, 0)
        XCTAssertEqual(rect__1_2__3_4.minY, 2)
        XCTAssertEqual(rect__n1_2__n3_4.minY, 2)
    }
    
    
    func testMidY() {
        XCTAssertEqual(rect__0_0__4_8.midY, 4)
        XCTAssertEqual(rect__1_2__3_4.midY, 4)
        XCTAssertEqual(rect__n1_2__n3_4.midY, 4)
    }
    
    
    func testMaxY() {
        XCTAssertEqual(rect__0_0__4_8.maxY, 8)
        XCTAssertEqual(rect__1_2__3_4.maxY, 6)
        XCTAssertEqual(rect__n1_2__n3_4.maxY, 6)
    }
    
    
    static let lineTests = [
        ("testMinX", testMinX),
        ("testMidX", testMidX),
        ("testMaxX", testMaxX),
        ("testMinY", testMinY),
        ("testMidY", testMidY),
        ("testMaxY", testMaxY),
    ]
}



// MARK: - Points

extension RectanglePositionTests {
    
    
    func testMinXminY() {
        XCTAssertEqual(rect__0_0__4_8.minXminY, DecimalPoint(x: 0, y: 0))
        XCTAssertEqual(rect__1_2__3_4.minXminY, DecimalPoint(x: 1, y: 2))
        XCTAssertEqual(rect__n1_2__n3_4.minXminY, DecimalPoint(x: -4, y: 2))
    }
    
    
    func testMinXmidY() {
        XCTAssertEqual(rect__0_0__4_8.minXmidY, DecimalPoint(x: 0, y: 4))
        XCTAssertEqual(rect__1_2__3_4.minXmidY, DecimalPoint(x: 1, y: 4))
        XCTAssertEqual(rect__n1_2__n3_4.minXmidY, DecimalPoint(x: -4, y: 4))
    }
    
    
    func testMinXmaxY() {
        XCTAssertEqual(rect__0_0__4_8.minXmaxY, DecimalPoint(x: 0, y: 8))
        XCTAssertEqual(rect__1_2__3_4.minXmaxY, DecimalPoint(x: 1, y: 6))
        XCTAssertEqual(rect__n1_2__n3_4.minXmaxY, DecimalPoint(x: -4, y: 6))
    }
    
    
    func testMidXminY() {
        XCTAssertEqual(rect__0_0__4_8.midXminY, DecimalPoint(x: 2, y: 0))
        XCTAssertEqual(rect__1_2__3_4.midXminY, DecimalPoint(x: 2.5, y: 2))
        XCTAssertEqual(rect__n1_2__n3_4.midXminY, DecimalPoint(x: -2.5, y: 2))
    }
    
    
    func testCenter() {
        XCTAssertEqual(rect__0_0__4_8.center, DecimalPoint(x: 2, y: 4))
        XCTAssertEqual(rect__1_2__3_4.center, DecimalPoint(x: 2.5, y: 4))
        XCTAssertEqual(rect__n1_2__n3_4.center, DecimalPoint(x: -2.5, y: 4))
    }
    
    
    func testMidXmidY() {
        XCTAssertEqual(rect__0_0__4_8.midXmidY, DecimalPoint(x: 2, y: 4))
        XCTAssertEqual(rect__1_2__3_4.midXmidY, DecimalPoint(x: 2.5, y: 4))
        XCTAssertEqual(rect__n1_2__n3_4.midXmidY, DecimalPoint(x: -2.5, y: 4))
    }
    
    
    func testMidXmaxY() {
        XCTAssertEqual(rect__0_0__4_8.midXmaxY, DecimalPoint(x: 2, y: 8))
        XCTAssertEqual(rect__1_2__3_4.midXmaxY, DecimalPoint(x: 2.5, y: 6))
        XCTAssertEqual(rect__n1_2__n3_4.midXmaxY, DecimalPoint(x: -2.5, y: 6))
    }
    
    
    func testMaxXminY() {
        XCTAssertEqual(rect__0_0__4_8.maxXminY, DecimalPoint(x: 4, y: 0))
        XCTAssertEqual(rect__1_2__3_4.maxXminY, DecimalPoint(x: 4, y: 2))
        XCTAssertEqual(rect__n1_2__n3_4.maxXminY, DecimalPoint(x: -1, y: 2))
    }
    
    
    func testMaxXmidY() {
        XCTAssertEqual(rect__0_0__4_8.maxXmidY, DecimalPoint(x: 4, y: 4))
        XCTAssertEqual(rect__1_2__3_4.maxXmidY, DecimalPoint(x: 4, y: 4))
        XCTAssertEqual(rect__n1_2__n3_4.maxXmidY, DecimalPoint(x: -1, y: 4))
    }
    
    
    func testMaxXmaxY() {
        XCTAssertEqual(rect__0_0__4_8.maxXmaxY, DecimalPoint(x: 4, y: 8))
        XCTAssertEqual(rect__1_2__3_4.maxXmaxY, DecimalPoint(x: 4, y: 6))
        XCTAssertEqual(rect__n1_2__n3_4.maxXmaxY, DecimalPoint(x: -1, y: 6))
    }
    
    
    static let pointTests = [
        ("testMinXminY", testMinXminY),
        ("testMinXmidY", testMinXmidY),
        ("testMinXmaxY", testMinXmaxY),
        ("testMidXminY", testMidXminY),
        ("testMidXmidY", testMidXmidY),
        ("testCenter", testCenter),
        ("testMidXmaxY", testMidXmaxY),
        ("testMaxXminY", testMaxXminY),
        ("testMaxXmidY", testMaxXmidY),
        ("testMaxXmaxY", testMaxXmaxY),
    ]
}



// MARK: - Relative/percent points

extension RectanglePositionTests {
    
    static let uIntRect_12x12at7x11 = UIntRect(x: 7, y: 11, width: 12, height: 12)
    static let cgRect_12x12at7x11 = CGRect(x: 7, y: 11, width: 12, height: 12)
    static let uIntRect_13x21at5x8 = UIntRect(x: 5, y: 8, width: 13, height: 21)
    static let cgRect_13x21at5x8 = CGRect(x: 5, y: 8, width: 13, height: 21)
    
    
    func testRelativePoint() {
        XCTAssertEqual(Self.uIntRect_12x12at7x11.relativePoint(xPercent: 0.5, yPercent: 0.5), UIntPoint(x: 7 + 6, y: 11 + 6))
        XCTAssertEqual(Self.cgRect_12x12at7x11.relativePoint(xPercent: 0.5, yPercent: 0.5), CGPoint(x: 7 + 6, y: 11 + 6))
        
        XCTAssertEqual(Self.uIntRect_13x21at5x8.relativePoint(xPercent: 0.5, yPercent: 0.5), UIntPoint(x: 5 + 6, y: 8 + 10))
        XCTAssertEqual(Self.cgRect_13x21at5x8.relativePoint(xPercent: 0.5, yPercent: 0.5), CGPoint(x: 5 + 6.5, y: 8 + 10.5))
        
        
        XCTAssertEqual(Self.uIntRect_12x12at7x11.relativePoint(xPercent: 0.25, yPercent: 0.75), UIntPoint(x: 7 + 3, y: 11 + 9))
        XCTAssertEqual(Self.cgRect_12x12at7x11.relativePoint(xPercent: 0.25, yPercent: 0.75), CGPoint(x: 7 + 3, y: 11 + 9))
        
        XCTAssertEqual(Self.uIntRect_13x21at5x8.relativePoint(xPercent: 0.25, yPercent: 0.25), UIntPoint(x: 5 + 3, y: 8 + 5))
        XCTAssertEqual(Self.cgRect_13x21at5x8.relativePoint(xPercent: 0.25, yPercent: 0.25), CGPoint(x: 5 + 3.25, y: 8 + 5.25))
        
        XCTAssertEqual(Self.uIntRect_13x21at5x8.relativePoint(xPercent: 0.75, yPercent: 0.75), UIntPoint(x: 5 + 9, y: 8 + 15))
        XCTAssertEqual(Self.cgRect_13x21at5x8.relativePoint(xPercent: 0.75, yPercent: 0.75), CGPoint(x: 5 + 9.75, y: 8 + 15.75))
    }
    
    
    func testMaxX_yPercent() {
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0   ), UIntPoint(x: 7 + 12, y: 11 + 0))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0.25), UIntPoint(x: 7 + 12, y: 11 + 3))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0.5 ), UIntPoint(x: 7 + 12, y: 11 + 6))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0.75), UIntPoint(x: 7 + 12, y: 11 + 9))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 1   ), UIntPoint(x: 7 + 12, y: 11 + 12))
        
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0   ), UIntPoint(x: Self.uIntRect_12x12at7x11.maxX, y: 1Self.uIntRect_12x12at7x11.y))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0.25), UIntPoint(x: Self.uIntRect_12x12at7x11.maxX, y: 11 + 3))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0.5 ), UIntPoint(x: Self.uIntRect_12x12at7x11.maxX, y: 11 + 6))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 0.75), UIntPoint(x: Self.uIntRect_12x12at7x11.maxX, y: 11 + 9))
        XCTAssertEqual(Self.uIntRect_12x12at7x11.maxX(yPercent: 1   ), UIntPoint(x: Self.uIntRect_12x12at7x11.maxX, y: 11Self.uIntRect_12x12at7x11.y))
        
        
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0   ), CGPoint(x: 7 + 12, y: 11 + 0))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0.25), CGPoint(x: 7 + 12, y: 11 + 3))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0.5 ), CGPoint(x: 7 + 12, y: 11 + 6))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0.75), CGPoint(x: 7 + 12, y: 11 + 9))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 1   ), CGPoint(x: 7 + 12, y: 11 + 12))
        
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0   ), CGPoint(x: Self.cgRect_12x12at7x11.maxX, y: 1Self.cgRect_12x12at7x11.y))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0.25), CGPoint(x: Self.cgRect_12x12at7x11.maxX, y: 11 + 3))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0.5 ), CGPoint(x: Self.cgRect_12x12at7x11.maxX, y: 11 + 6))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 0.75), CGPoint(x: Self.cgRect_12x12at7x11.maxX, y: 11 + 9))
        XCTAssertEqual(Self.cgRect_12x12at7x11.maxX(yPercent: 1   ), CGPoint(x: Self.cgRect_12x12at7x11.maxX, y: 11Self.cgRect_12x12at7x11.y))
        
        
        
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0   ), UIntPoint(x: 5 + 13, y: 8 + 0))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0.25), UIntPoint(x: 5 + 13, y: 8 + 5))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0.5 ), UIntPoint(x: 5 + 13, y: 8 + 10))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0.75), UIntPoint(x: 5 + 13, y: 8 + 15))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 1   ), UIntPoint(x: 5 + 13, y: 8 + 21))
        
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0   ), UIntPoint(x: Self.uIntRect_13x21at5x8.maxX, y: Self.uIntRect_13x21at5x8.y))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0.25), UIntPoint(x: Self.uIntRect_13x21at5x8.maxX, y: 8 + 5))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0.5 ), UIntPoint(x: Self.uIntRect_13x21at5x8.maxX, y: 8 + 10))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 0.75), UIntPoint(x: Self.uIntRect_13x21at5x8.maxX, y: 8 + 15))
        XCTAssertEqual(Self.uIntRect_13x21at5x8.maxX(yPercent: 1   ), UIntPoint(x: Self.uIntRect_13x21at5x8.maxX, y: 8Self.uIntRect_13x21at5x8.y))
        
        
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0   ), CGPoint(x: 5 + 13, y: 8 + 0))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0.25), CGPoint(x: 5 + 13, y: 8 + 5.25))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0.5 ), CGPoint(x: 5 + 13, y: 8 + 10.5))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0.75), CGPoint(x: 5 + 13, y: 8 + 15.75))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 1   ), CGPoint(x: 5 + 13, y: 8 + 21))
        
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0   ), CGPoint(x: Self.cgRect_13x21at5x8.maxX, y: Self.cgRect_13x21at5x8.y))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0.25), CGPoint(x: Self.cgRect_13x21at5x8.maxX, y: 8 + 5.25))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0.5 ), CGPoint(x: Self.cgRect_13x21at5x8.maxX, y: 8 + 10.5))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 0.75), CGPoint(x: Self.cgRect_13x21at5x8.maxX, y: 8 + 15.75))
        XCTAssertEqual(Self.cgRect_13x21at5x8.maxX(yPercent: 1   ), CGPoint(x: Self.cgRect_13x21at5x8.maxX, y: 8Self.cgRect_13x21at5x8.y))
    }
    
    
    static let relativePercentTests = [
        ("testRelativePoint", testRelativePoint),
        ("testMaxX_yPercent", testMaxX_yPercent),
    ]
}



// MARK: -

extension RectanglePositionTests {
    
    func testWithOriginZero() {
        XCTAssertEqual(Self.cgRect_13x21at5x8.withOriginZero, CGRect(x: 0, y: 0, width: 13, height: 21))
        XCTAssertEqual(UIntRect(x: 5, y: 8, width: 13, height: 21).withOriginZero, UIntRect(x: 0, y: 0, width: 13, height: 21))
        
        XCTAssertEqual(Self.cgRect_13x21at5x8.withOriginZero, CGRect(origin: .zero, size: CGSize(width: 13, height: 21)))
        
        XCTAssertEqual(CGRect(x: 0, y: 0, width: 13, height: 21).withOriginZero, CGRect(x: 0, y: 0, width: 13, height: 21))
    }
    
    
    static let otherTests = [
        ("testWithOriginZero", testWithOriginZero),
    ]
}
