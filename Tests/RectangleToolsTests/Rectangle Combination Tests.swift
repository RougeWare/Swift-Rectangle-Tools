//
//  Rectangle Combination Tests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-08-05.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
import RectangleTools



final class Rectangle_Combination_Tests: XCTestCase {
    
    /// ```
    ///  ↑
    ///  │
    /// 6│
    /// 5│
    /// 4│
    /// 3│  ┏━━━━━━━━┓
    /// 2│  ┗━━━━━━━━┛
    /// 1│
    /// ←┼──────────────────→
    ///  ↓  1  2  3  4  5  6
    /// ```
    let rect__1_2__3_1 = DecimalRectangle(x: 1, y: 2, width: 3, height: 1)
    
    /// ```
    ///  ↑
    ///  │
    /// 6│           ┏━━━━━┓
    /// 5│           ┃     ┃
    /// 4│           ┗━━━━━┛
    /// 3│
    /// 2│
    /// 1│
    /// ←┼──────────────────→
    ///  ↓  1  2  3  4  5  6
    /// ```
    let rect__4_4__2_2 = DecimalRectangle(x: 4, y: 4, width: 2, height: 2)
    
    /// ```
    ///  ↑
    ///  │
    /// 6│
    /// 5│     ┏━━┓
    /// 4│     ┃  ┃
    /// 3│     ┗━━┛
    /// 2│
    /// 1│
    /// ←┼──────────────────→
    ///  ↓  1  2  3  4  5  6
    /// ```
    let rect__2_3__2_2 = DecimalRectangle(x: 2, y: 3, width: 2, height: 2)
    
    
    func test_union_with() {
        let union = rect__1_2__3_1.union(with: rect__4_4__2_2)
        
        XCTAssertEqual(union.origin.x, 1)
        XCTAssertEqual(union.origin.y, 2)
        XCTAssertEqual(union.size.width, 5)
        XCTAssertEqual(union.size.height, 4)
        
        let union2 = union.union(with: rect__2_3__2_2)
        
        XCTAssertEqual(union2.origin.x, 1)
        XCTAssertEqual(union2.origin.y, 2)
        XCTAssertEqual(union2.size.width, 5)
        XCTAssertEqual(union2.size.height, 4)
    }
    
    
    func test_formUnion_with() {
        var union = rect__1_2__3_1
        union.formUnion(with: rect__4_4__2_2)
        
        XCTAssertEqual(union.origin.x, 1)
        XCTAssertEqual(union.origin.y, 2)
        XCTAssertEqual(union.size.width, 5)
        XCTAssertEqual(union.size.height, 4)
        
        union.formUnion(with: rect__2_3__2_2)
        
        XCTAssertEqual(union.origin.x, 1)
        XCTAssertEqual(union.origin.y, 2)
        XCTAssertEqual(union.size.width, 5)
        XCTAssertEqual(union.size.height, 4)
    }
    
    
    func test_grandUnion() {
        for _ in (1...5) {
            let grandUnion = [
                rect__1_2__3_1,
                rect__2_3__2_2,
                rect__4_4__2_2,
            ]
            .shuffled()
            .grandUnion()
            ?? .init(origin: .zero, size: .zero)
            
            XCTAssertEqual(grandUnion.origin.x, 1)
            XCTAssertEqual(grandUnion.origin.y, 2)
            XCTAssertEqual(grandUnion.size.width, 5)
            XCTAssertEqual(grandUnion.size.height, 4)
        }
    }
    
    
    static let allTests = [
        ("test_union_with", test_union_with),
        ("test_formUnion_with", test_formUnion_with),
        ("test_grandUnion", test_grandUnion),
    ]
}
