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
        
        
        let stringIndexMap = size
            .map2D { index in
                "\(index.x),\(index.y)"
            }
        
        
        XCTAssertEqual(
            stringIndexMap,
            [
                ["0,0", "1,0", "2,0", "3,0", "4,0"],
                ["0,1", "1,1", "2,1", "3,1", "4,1"],
                ["0,2", "1,2", "2,2", "3,2", "4,2"],
                ["0,3", "1,3", "2,3", "3,3", "4,3"],
                ["0,4", "1,4", "2,4", "3,4", "4,4"],
            ]
        )
    }
    
    
    func testUIntSize_shuffled() {
        let size = UIntSize(width: 13, height: 4)
        
        
        for _ in 1...20 {

            let shuffledMap = size
                .lazy
                .shuffled()
                .map { index in
                    "\(index.x),\(index.y)"
                }
            
            XCTAssertNotEqual(
                shuffledMap,
                [
                    "0,0", "1,0", "2,0", "3,0", "4,0", "5,0", "6,0", "7,0", "8,0", "9,0", "10,0", "11,0", "12,0", "13,0",
                    "0,1", "1,1", "2,1", "3,1", "4,1", "5,1", "6,1", "7,1", "8,1", "9,1", "10,1", "11,1", "12,1", "13,1",
                    "0,2", "1,2", "2,2", "3,2", "4,2", "5,2", "6,2", "7,2", "8,2", "9,2", "10,2", "11,2", "12,2", "13,2",
                    "0,3", "1,3", "2,3", "3,3", "4,3", "5,3", "6,3", "7,3", "8,3", "9,3", "10,3", "11,3", "12,3", "13,3",
                    "0,4", "1,4", "2,4", "3,4", "4,4", "5,4", "6,4", "7,4", "8,4", "9,4", "10,4", "11,4", "12,4", "13,4",
                ]
            )
        }
    }
    
    
    func testIntSize_shuffled() {
        let size = IntSize(width: 13, height: 4)
        
        
        for _ in 0...20 {

            let shuffledMap = size
                .lazy
                .shuffled()
                .map { index in
                    "\(index.x),\(index.y)"
                }
            
            XCTAssertNotEqual(
                shuffledMap,
                [
                    "0,0", "1,0", "2,0", "3,0", "4,0", "5,0", "6,0", "7,0", "8,0", "9,0", "10,0", "11,0", "12,0", "13,0",
                    "0,1", "1,1", "2,1", "3,1", "4,1", "5,1", "6,1", "7,1", "8,1", "9,1", "10,1", "11,1", "12,1", "13,1",
                    "0,2", "1,2", "2,2", "3,2", "4,2", "5,2", "6,2", "7,2", "8,2", "9,2", "10,2", "11,2", "12,2", "13,2",
                    "0,3", "1,3", "2,3", "3,3", "4,3", "5,3", "6,3", "7,3", "8,3", "9,3", "10,3", "11,3", "12,3", "13,3",
                    "0,4", "1,4", "2,4", "3,4", "4,4", "5,4", "6,4", "7,4", "8,4", "9,4", "10,4", "11,4", "12,4", "13,4",
                ]
            )
        }
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
        ("testUIntSize_shuffled", testUIntSize_shuffled),
        ("testIntSize_shuffled", testIntSize_shuffled),
        ("testIntSize_map2D", testIntSize_map2D),
    ]
}



private prefix func ++ <I: BinaryInteger> (rhs: inout I) -> I {
    rhs += 1
    return rhs
}
