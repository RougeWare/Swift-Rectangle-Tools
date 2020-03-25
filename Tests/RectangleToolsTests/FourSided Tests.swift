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
    
    private static let insets_raw_1_2_3_4 = NativeEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
    private static let insets_synth_5_6_7_8 = NativeEdgeInsets(top: 5, right: 6, bottom: 7, left: 8)
    
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
        XCTAssertEqual(NativeEdgeInsets(top: 5, right: 6, bottom: 7, left: 8), NativeEdgeInsets(top: 5, left: 8, bottom: 7, right: 6))
        XCTAssertEqual(NativeEdgeInsets(top: 9, eachHorizontal: 10, bottom: 11), NativeEdgeInsets(top: 9, left: 10, bottom: 11, right: 10))
        XCTAssertEqual(NativeEdgeInsets(eachVertical: 12, eachHorizontal: 13), NativeEdgeInsets(top: 12, left: 13, bottom: 12, right: 13))
        XCTAssertEqual(NativeEdgeInsets(each: 14), NativeEdgeInsets(top: 14, left: 14, bottom: 14, right: 14))
        XCTAssertEqual(NativeEdgeInsets.zero, NativeEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    
    func testTotals_EdgeInsets() {
        XCTAssertEqual(Self.insets_raw_1_2_3_4.horizontalTotal, 6)
        XCTAssertEqual(Self.insets_raw_1_2_3_4.verticalTotal, 4)
        
        XCTAssertEqual(Self.insets_synth_5_6_7_8.horizontalTotal, 14)
        XCTAssertEqual(Self.insets_synth_5_6_7_8.verticalTotal, 12)
    }
    
    
    func testFourSidedRelativeFields_EdgeInsets() {
        let rawInsets = Self.insets_raw_1_2_3_4
        let synthInsets = Self.insets_synth_5_6_7_8
        
        XCTAssertEqual(rawInsets.top, 1)
        XCTAssertEqual(rawInsets.bottom, 3)
        XCTAssertEqual(synthInsets.top, 5)
        XCTAssertEqual(synthInsets.bottom, 7)

        switch UserInterfaceLayoutDirection.current {
        case .leftToRight:
            XCTAssertEqual(rawInsets.leading, 2)
            XCTAssertEqual(rawInsets.trailing, 4)
            
            XCTAssertEqual(synthInsets.trailing, 6)
            XCTAssertEqual(synthInsets.leading, 8)

        case .rightToLeft:
            XCTAssertEqual(rawInsets.trailing, 2)
            XCTAssertEqual(rawInsets.leading, 4)
            
            XCTAssertEqual(synthInsets.leading, 6)
            XCTAssertEqual(synthInsets.trailing, 8)
            
        @unknown default:
            XCTFail("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
        }
    }
    
    
    func testFourSidedRelativeInitializer_EdgeInsets() {
        let synthInsets = NativeEdgeInsets(top: 10, trailing: 20, bottom: 30, leading: 40)
        
        XCTAssertEqual(synthInsets.top, 10)
        XCTAssertEqual(synthInsets.bottom, 30)
        XCTAssertEqual(synthInsets.trailing, 20)
        XCTAssertEqual(synthInsets.leading, 40)

        switch UserInterfaceLayoutDirection.current {
        case .leftToRight:
            XCTAssertEqual(synthInsets.right, 20)
            XCTAssertEqual(synthInsets.left, 40)

        case .rightToLeft:
            XCTAssertEqual(synthInsets.left, 20)
            XCTAssertEqual(synthInsets.right, 40)
            
        @unknown default:
            XCTFail("Unknown user interface layout direction: \(UserInterfaceLayoutDirection.current)")
        }
    }
    
    
    
    static var edgeInsetsTests = [
        testFourSidedAbsoluteFields_EdgeInsets,
        testInitializers_EdgeInsets,
        testTotals_EdgeInsets,
        testFourSidedRelativeFields_EdgeInsets,
        testFourSidedRelativeInitializer_EdgeInsets,
    ]
}
