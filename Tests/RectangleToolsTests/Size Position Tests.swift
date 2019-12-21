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
    let size__4_8 = DecimalSize(width: 4, height: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4┢━━━━━━━━┓
    /// 3┃        ┃
    /// 2┃        ┃
    /// 1┃        ┃
    /// ←╄━━━━━━━━┹───→
    ///  ↓  1  2  3
    /// ```
    let size__3_4 = DecimalSize(width: 3, height: 4)
    
    /// ```
    ///              ↑
    ///              │
    ///     ┏━━━━━━━━┪4
    ///     ┃        ┃3
    ///     ┃        ┃2
    ///     ┃        ┃1
    /// ←───┗━━━━━━━━╃→
    ///    -3 -2 -1  ↓
    /// ```
    let size__n3_4 = DecimalSize(width: -3, height: 4)
    
    /// ```
    ///  ↑  1  2  3
    /// ←╆━━━━━━━━┱───→
    /// 1┃        ┃
    /// 2┃        ┃
    /// 3┃        ┃
    /// 4┡━━━━━━━━┛
    ///  │
    ///  ↓
    /// ```
    let size__3_n4 = DecimalSize(width: 3, height: -4)
    
    
    static let allTests =
          lineTests
        + pointTests
}



// MARK: - Lines

extension SizePositionTests {
    
    func testMinX() {
        XCTAssertEqual(size__4_8.minX, 0)
        XCTAssertEqual(size__3_4.minX, 0)
        XCTAssertEqual(size__n3_4.minX, -3)
        XCTAssertEqual(size__3_n4.minX, 0)
    }
    
    
    func testMidX() {
        XCTAssertEqual(size__4_8.midX, 2)
        XCTAssertEqual(size__3_4.midX, 1.5)
        XCTAssertEqual(size__n3_4.midX, -1.5)
        XCTAssertEqual(size__3_n4.midX, 1.5)
    }
    
    
    func testMaxX() {
        XCTAssertEqual(size__4_8.maxX, 4)
        XCTAssertEqual(size__3_4.maxX, 3)
        XCTAssertEqual(size__n3_4.maxX, 0)
        XCTAssertEqual(size__3_n4.maxX, 3)
    }
    
    
    func testMinY() {
        XCTAssertEqual(size__4_8.minY, 0)
        XCTAssertEqual(size__3_4.minY, 0)
        XCTAssertEqual(size__n3_4.minY, 0)
        XCTAssertEqual(size__3_n4.minY, -4)
    }
    
    
    func testMidY() {
        XCTAssertEqual(size__4_8.midY, 4)
        XCTAssertEqual(size__3_4.midY, 2)
        XCTAssertEqual(size__n3_4.midY, 2)
        XCTAssertEqual(size__3_n4.midY, -2)
    }
    
    
    func testMaxY() {
        XCTAssertEqual(size__4_8.maxY, 8)
        XCTAssertEqual(size__3_4.maxY, 4)
        XCTAssertEqual(size__n3_4.maxY, 4)
        XCTAssertEqual(size__3_n4.maxY, 0)
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

extension SizePositionTests {
    
    
    func testMinXminY() {
        XCTAssertEqual(size__4_8.minXminY(), DecimalPoint(x: 0, y: 0))
        XCTAssertEqual(size__3_4.minXminY(), DecimalPoint(x: 0, y: 0))
        XCTAssertEqual(size__n3_4.minXminY(), DecimalPoint(x: -3, y: 0))
        XCTAssertEqual(size__3_n4.minXminY(), DecimalPoint(x: 0, y: -4))
    }
    
    
    func testMinXmidY() {
        XCTAssertEqual(size__4_8.minXmidY(), DecimalPoint(x: 0, y: 4))
        XCTAssertEqual(size__3_4.minXmidY(), DecimalPoint(x: 0, y: 2))
        XCTAssertEqual(size__n3_4.minXmidY(), DecimalPoint(x: -3, y: 2))
        XCTAssertEqual(size__3_n4.minXmidY(), DecimalPoint(x: 0, y: -2))
    }
    
    
    func testMinXmaxY() {
        XCTAssertEqual(size__4_8.minXmaxY(), DecimalPoint(x: 0, y: 8))
        XCTAssertEqual(size__3_4.minXmaxY(), DecimalPoint(x: 0, y: 4))
        XCTAssertEqual(size__n3_4.minXmaxY(), DecimalPoint(x: -3, y: 4))
        XCTAssertEqual(size__3_n4.minXmaxY(), DecimalPoint(x: 0, y: 0))
    }
    
    
    func testMidXminY() {
        XCTAssertEqual(size__4_8.midXminY(), DecimalPoint(x: 2, y: 0))
        XCTAssertEqual(size__3_4.midXminY(), DecimalPoint(x: 1.5, y: 0))
        XCTAssertEqual(size__n3_4.midXminY(), DecimalPoint(x: -1.5, y: 0))
        XCTAssertEqual(size__3_n4.midXminY(), DecimalPoint(x: 1.5, y: -4))
    }
    
    
    func testMidXmidY() {
        XCTAssertEqual(size__4_8.midXmidY(), DecimalPoint(x: 2, y: 4))
        XCTAssertEqual(size__3_4.midXmidY(), DecimalPoint(x: 1.5, y: 2))
        XCTAssertEqual(size__n3_4.midXmidY(), DecimalPoint(x: -1.5, y: 2))
        XCTAssertEqual(size__3_n4.midXmidY(), DecimalPoint(x: 1.5, y: -2))
    }
    
    
    func testCenter() {
        XCTAssertEqual(size__4_8.center(), DecimalPoint(x: 2, y: 4))
        XCTAssertEqual(size__3_4.center(), DecimalPoint(x: 1.5, y: 2))
        XCTAssertEqual(size__n3_4.center(), DecimalPoint(x: -1.5, y: 2))
        XCTAssertEqual(size__3_n4.center(), DecimalPoint(x: 1.5, y: -2))
    }
    
    
    func testMidXmaxY() {
        XCTAssertEqual(size__4_8.midXmaxY(), DecimalPoint(x: 2, y: 8))
        XCTAssertEqual(size__3_4.midXmaxY(), DecimalPoint(x: 1.5, y: 4))
        XCTAssertEqual(size__n3_4.midXmaxY(), DecimalPoint(x: -1.5, y: 4))
        XCTAssertEqual(size__3_n4.midXmaxY(), DecimalPoint(x: 1.5, y: 0))
    }
    
    
    func testMaxXminY() {
        XCTAssertEqual(size__4_8.maxXminY(), DecimalPoint(x: 4, y: 0))
        XCTAssertEqual(size__3_4.maxXminY(), DecimalPoint(x: 3, y: 0))
        XCTAssertEqual(size__n3_4.maxXminY(), DecimalPoint(x: 0, y: 0))
        XCTAssertEqual(size__3_n4.maxXminY(), DecimalPoint(x: 3, y: -4))
    }
    
    
    func testMaxXmidY() {
        XCTAssertEqual(size__4_8.maxXmidY(), DecimalPoint(x: 4, y: 4))
        XCTAssertEqual(size__3_4.maxXmidY(), DecimalPoint(x: 3, y: 2))
        XCTAssertEqual(size__n3_4.maxXmidY(), DecimalPoint(x: 0, y: 2))
        XCTAssertEqual(size__3_n4.maxXmidY(), DecimalPoint(x: 3, y: -2))
    }
    
    
    func testMaxXmaxY() {
        XCTAssertEqual(size__4_8.maxXmaxY(), DecimalPoint(x: 4, y: 8))
        XCTAssertEqual(size__3_4.maxXmaxY(), DecimalPoint(x: 3, y: 4))
        XCTAssertEqual(size__n3_4.maxXmaxY(), DecimalPoint(x: 0, y: 4))
        XCTAssertEqual(size__3_n4.maxXmaxY(), DecimalPoint(x: 3, y: 0))
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
