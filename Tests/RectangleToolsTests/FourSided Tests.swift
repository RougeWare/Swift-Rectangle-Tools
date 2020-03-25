//
//  FourSided Tests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-03-19.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest
@testable import RectangleTools



final class FourSidedTests: XCTestCase {
    
    
    static var allTests =
        edgeInsetsTests
}



// MARK: - EdgeInsets (FourSidedAbsolute)

extension FourSidedTests {
    
    private static let insets_raw_1_2_3_4 = EdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
    private static let insets_synth_5_6_7_8 = EdgeInsets(top: 5, right: 6, bottom: 7, left: 8)
    
    func testFourSidedAbsoluteFields_EdgeInsets() {
        let rawInsets = Self.insets_raw_1_2_3_4
        let synthInsets = Self.insets_synth_5_6_7_8
        
        XCTAssertEqual(rawInsets.top, 1)
        XCTAssertEqual(rawInsets.left, 2)
        XCTAssertEqual(rawInsets.bottom, 3)
        XCTAssertEqual(rawInsets.right, 4)
        
        XCTAssertEqual(synthInsets.top, 5)
        XCTAssertEqual(synthInsets.right, 6)
        XCTAssertEqual(synthInsets.bottom, 7)
        XCTAssertEqual(synthInsets.left, 8)
    }
    
    
    func testInitializers_EdgeInsets() {
        XCTAssertEqual(EdgeInsets(top: 5, right: 6, bottom: 7, left: 8), EdgeInsets(top: 5, left: 8, bottom: 7, right: 6))
        XCTAssertEqual(EdgeInsets(top: 9, eachHorizontal: 10, bottom: 11), EdgeInsets(top: 9, left: 10, bottom: 11, right: 10))
        XCTAssertEqual(EdgeInsets(eachVertical: 12, eachHorizontal: 13), EdgeInsets(top: 12, left: 13, bottom: 12, right: 13))
        XCTAssertEqual(EdgeInsets(each: 14), EdgeInsets(top: 14, left: 14, bottom: 14, right: 14))
        XCTAssertEqual(EdgeInsets.zero, EdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    
    func testTotals_EdgeInsets() {
        XCTAssertEqual(Self.insets_raw_1_2_3_4.horizontalTotal, 6)
        XCTAssertEqual(Self.insets_raw_1_2_3_4.verticalTotal, 4)
        
        XCTAssertEqual(Self.insets_synth_5_6_7_8.horizontalTotal, 14)
        XCTAssertEqual(Self.insets_synth_5_6_7_8.verticalTotal, 12)
    }
    
    
    
    static var edgeInsetsTests = [
        testFourSidedAbsoluteFields_EdgeInsets,
        testInitializers_EdgeInsets,
        testTotals_EdgeInsets,
    ]
}
