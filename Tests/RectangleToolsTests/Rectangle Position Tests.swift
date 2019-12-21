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
}



// MARK: - Lines

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
