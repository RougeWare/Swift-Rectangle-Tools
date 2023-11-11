//
//  Collection2DTests.swift
//  
//
//  Created by Ky Leggiero on 11/17/21.
//

import XCTest
import RectangleTools



final class Collection2DTests: XCTestCase {
    
    func testUIntSize() {
        let threeByThree = UIntSize(width: 3, height: 3)
            .map(IntPoint.init)
        
        XCTAssertEqual(threeByThree.count, 9)
        XCTAssertEqual(threeByThree, [
            .init(x: 0, y: 0),
            .init(x: 1, y: 0),
            .init(x: 2, y: 0),
            
            .init(x: 0, y: 1),
            .init(x: 1, y: 1),
            .init(x: 2, y: 1),
            
            .init(x: 0, y: 2),
            .init(x: 1, y: 2),
            .init(x: 2, y: 2),
        ])
    }
    
    func testUIntRect() {
        let threeByThree = UIntRect(x: 0, y: 0, width: 3, height: 3)
            .map(IntPoint.init)
        
        XCTAssertEqual(threeByThree.count, 9)
        XCTAssertEqual(threeByThree, [
            .init(x: 0, y: 0),
            .init(x: 1, y: 0),
            .init(x: 2, y: 0),
            
            .init(x: 0, y: 1),
            .init(x: 1, y: 1),
            .init(x: 2, y: 1),
            
            .init(x: 0, y: 2),
            .init(x: 1, y: 2),
            .init(x: 2, y: 2),
        ])
        
        
        let distantThreeByThree = UIntRect(x: 10, y: 10, width: 3, height: 3)
            .map(IntPoint.init)
        
        XCTAssertEqual(distantThreeByThree.count, 9)
        XCTAssertEqual(distantThreeByThree, [
            .init(x: 10, y: 10),
            .init(x: 11, y: 10),
            .init(x: 12, y: 10),
            
            .init(x: 10, y: 11),
            .init(x: 11, y: 11),
            .init(x: 12, y: 11),
            
            .init(x: 10, y: 12),
            .init(x: 11, y: 12),
            .init(x: 12, y: 12),
        ])
    }
    
    
    static let allTests = [
        ("testUIntSize", testUIntSize),
        ("testUIntRect", testUIntRect),
    ]
}
