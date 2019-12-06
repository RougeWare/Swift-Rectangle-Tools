//
//  Integer Size Tests.swift
//  RectangleTools
//  
//
//  Created by Ben Leggiero on 2019-12-05.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
@testable import RectangleTools



final class IntegerSizeTests: XCTestCase {
    
    func testUIntSize_map2D() {
        let size = UIntSize(width: 5, height: 5)
        var counter: UInt = 0
        
        let countedMap = size.map2D { _ in
            ++counter
        }
        
        
        XCTAssertEqual(
            countedMap,
            [
                [01, 02, 03, 04, 05],
                [06, 07, 08, 09, 10],
                [11, 12, 13, 14, 15],
                [16, 17, 18, 19, 20],
                [21, 22, 23, 24, 25],
            ]
        )
    }
    
    
    func testIntSize_map2D() {
        let size = IntSize(width: 5, height: 5)
        var counter: Int = 0
        
        let countedMap = size.map2D { _ in
            ++counter
        }
        
        
        XCTAssertEqual(
            countedMap,
            [
                [01, 02, 03, 04, 05],
                [06, 07, 08, 09, 10],
                [11, 12, 13, 14, 15],
                [16, 17, 18, 19, 20],
                [21, 22, 23, 24, 25],
            ]
        )
    }
    
    
    static var allTests = [
        ("testUIntSize_map2D", testUIntSize_map2D),
        ("testIntSize_map2D", testIntSize_map2D),
    ]
}



private prefix func ++ <I: BinaryInteger> (rhs: inout I) -> I {
    rhs += 1
    return rhs
}
