//
//  Rectangle Edgewise Init Tests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-08-05.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
import RectangleTools



final class Rectangle_Edgewise_Init_Tests: XCTestCase {
    
    func test_init_minX_minY_maxX_maxY() {
        let rect_2_4_6_8 = DecimalRectangle(minX: 2, minY: 4, maxX: 6, maxY: 8)
        
        XCTAssertEqual(rect_2_4_6_8.minX, 2)
        XCTAssertEqual(rect_2_4_6_8.minY, 4)
        XCTAssertEqual(rect_2_4_6_8.maxX, 6)
        XCTAssertEqual(rect_2_4_6_8.maxY, 8)
    }
    
    
    static let allTests = [
        ("test_init_minX_maxX_minY_maxY", test_init_minX_minY_maxX_maxY),
    ]
}


