//
//  rect.scaled Tests.swift
//  
//
//  Created by Ky Leggiero on 2022-01-11.
//

import XCTest
import RectangleTools



final class rect_scaled_Tests: XCTestCase {
    
    // MARK: - Fit
    
    
    
    // MARK: Fit wide in ___
    
    func test_fitWideRectInWideContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 1.2)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .wide__18_12,           expect: .init(width: 18, height: 0.225)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12, within: .extremelyWide__960_12, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12, within: .wide__18_12,           expect: .init(width: 18, height: 2.25)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12, within: .extremelyWide__960_12, expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12, within: .veryWide__96_12,       expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12, within: .wide__18_12,           expect: .init(width: 18, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 1.2)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .wide__18_12,           expect: .init(width: 18, height: 0.225)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12, within: .extremelyWide__960_12, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12, within: .wide__18_12,           expect: .init(width: 18, height: 2.25)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12, within: .extremelyWide__960_12, expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12, within: .veryWide__96_12,       expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12, within: .wide__18_12,           expect: .init(width: 18, height: 12)))
        
        
        // Test dimensional scaling with various multipliers
        testScaling(.fit,.down,     .wide__18_12, by: 0.4, expect: .init(width: 7.2, height: 4.8))
        testScaling(.fit,.down,     .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fit,.down,     .wide__18_12, by: 3,   expect: .init(width: 18, height: 12))
        
        testScaling(.fit,.upOrDown, .wide__18_12, by: 0.4, expect: .init(width: 7.2, height: 4.8))
        testScaling(.fit,.upOrDown, .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fit,.upOrDown, .wide__18_12, by: 3,   expect: .init(width: 54, height: 36))
        
        testScaling(.fit,.down,     .veryWide__96_12, by: 0.4, expect: .init(width: 38.4, height: 4.8))
        testScaling(.fit,.down,     .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fit,.down,     .veryWide__96_12, by: 2,   expect: .init(width: 96, height: 12))
        
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 0.4, expect: .init(width: 38.4, height: 4.8))
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 2,   expect: .init(width: 192, height: 24))
        
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 0.5, expect: .init(width: 480, height: 6))
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 1.5, expect: .init(width: 960, height: 12))
        
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 0.5, expect: .init(width: 480, height: 6))
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 1.5, expect: .init(width: 1440, height: 18))
    }
    
    
    func test_fitWideRectInSquareContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .squareSmall__12_12, expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12,       within: .squareSmall__12_12, expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12,           within: .squareSmall__12_12, expect: .init(width: 12, height: 8)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .squareMedium__96_96, expect: .init(width: 96, height: 1.2)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12,       within: .squareMedium__96_96, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12,           within: .squareMedium__96_96, expect: .init(width: 18, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .squareLarge__960_960, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12,       within: .squareLarge__960_960, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12,           within: .squareLarge__960_960, expect: .init(width: 18, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .squareSmall__12_12, expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12,       within: .squareSmall__12_12, expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12,           within: .squareSmall__12_12, expect: .init(width: 12, height: 8)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .squareMedium__96_96, expect: .init(width: 96, height: 1.2)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12,       within: .squareMedium__96_96, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12,           within: .squareMedium__96_96, expect: .init(width: 96, height: 64)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .squareLarge__960_960, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12,       within: .squareLarge__960_960, expect: .init(width: 960, height: 120)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12,           within: .squareLarge__960_960, expect: .init(width: 960, height: 640)))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.fit,.down,     .wide__18_12, by: 0.5, expect: .init(width: 9, height: 6))
        testScaling(.fit,.down,     .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fit,.down,     .wide__18_12, by: 2,   expect: .init(width: 18, height: 12))
        
        testScaling(.fit,.upOrDown, .wide__18_12, by: 0.5, expect: .init(width: 9, height: 6))
        testScaling(.fit,.upOrDown, .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fit,.upOrDown, .wide__18_12, by: 2,   expect: .init(width: 36, height: 24))
        
        testScaling(.fit,.down,     .veryWide__96_12, by: 0.5, expect: .init(width: 48, height: 6))
        testScaling(.fit,.down,     .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fit,.down,     .veryWide__96_12, by: 1.5, expect: .init(width: 96, height: 12))
        
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 0.5, expect: .init(width: 48, height: 6))
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 1.5, expect: .init(width: 144, height: 18))
        
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 0.25, expect: .init(width: 240, height: 3))
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 1,    expect: .init(width: 960, height: 12))
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 3,    expect: .init(width: 960, height: 12))
        
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 0.25, expect: .init(width: 240, height: 3))
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 1,    expect: .init(width: 960, height: 12))
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 3,    expect: .init(width: 2880, height: 36))
    }
    
    
    func test_fitWideRectInTallContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyWide__960_12, within: .tall__12_18,           expect: .init(width: 12, height: 0.15)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryWide__96_12, within: .tall__12_18,           expect: .init(width: 12, height: 1.5)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 8)))
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 8)))
        XCTAssertTrue(testScaling(.fit,.down,  .wide__18_12, within: .tall__12_18,           expect: .init(width: 12, height: 8)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyWide__960_12, within: .tall__12_18,           expect: .init(width: 12, height: 0.15)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryWide__96_12, within: .tall__12_18,           expect: .init(width: 12, height: 1.5)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 8)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 8)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .wide__18_12, within: .tall__12_18,           expect: .init(width: 12, height: 8)))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.fit,.down,     .wide__18_12, by: 0.75, expect: .init(width: 13.5, height: 9))
        testScaling(.fit,.down,     .wide__18_12, by: 1,    expect: .init(width: 18, height: 12))
        testScaling(.fit,.down,     .wide__18_12, by: 4,    expect: .init(width: 18, height: 12))
        
        testScaling(.fit,.upOrDown, .wide__18_12, by: 0.75, expect: .init(width: 13.5, height: 9))
        testScaling(.fit,.upOrDown, .wide__18_12, by: 1,    expect: .init(width: 18, height: 12))
        testScaling(.fit,.upOrDown, .wide__18_12, by: 4,    expect: .init(width: 72, height: 48))
        
        testScaling(.fit,.down,     .veryWide__96_12, by: 0.3, expect: .init(width: 28.8, height: 3.6))
        testScaling(.fit,.down,     .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fit,.down,     .veryWide__96_12, by: 5,   expect: .init(width: 96, height: 12))
        
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 0.3, expect: .init(width: 28.8, height: 3.6))
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fit,.upOrDown, .veryWide__96_12, by: 5,   expect: .init(width: 480, height: 60))
        
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 0.2, expect: .init(width: 192, height: 2.4))
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fit,.down,     .extremelyWide__960_12, by: 2,   expect: .init(width: 960, height: 12))
        
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 0.2, expect: .init(width: 192, height: 2.4))
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fit,.upOrDown, .extremelyWide__960_12, by: 2,   expect: .init(width: 1920, height: 24))
    }
    
    
    // MARK: Fit square in ___
    
    func test_fitSquareRectInWideContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .extremelyWide__960_12, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .veryWide__96_12,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .wide__18_12,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .extremelyWide__960_12, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .veryWide__96_12,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .wide__18_12,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .extremelyWide__960_12, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .veryWide__96_12,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .wide__18_12,           expect: .init(width: 12, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .extremelyWide__960_12, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .veryWide__96_12,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .wide__18_12,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .extremelyWide__960_12, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .veryWide__96_12,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .wide__18_12,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .extremelyWide__960_12, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .veryWide__96_12,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .wide__18_12,           expect: .init(width: 12, height: 12)))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.fit,.down,     .squareSmall__12_12, by: 0.6, expect: .init(width: 7.2, height: 7.2))
        testScaling(.fit,.down,     .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fit,.down,     .squareSmall__12_12, by: 3,   expect: .init(width: 12, height: 12))
        
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 0.6, expect: .init(width: 7.2, height: 7.2))
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 3,   expect: .init(width: 36, height: 36))
        
        testScaling(.fit,.down,     .squareMedium__96_96, by: 0.4, expect: .init(width: 38.4, height: 38.4))
        testScaling(.fit,.down,     .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fit,.down,     .squareMedium__96_96, by: 2,   expect: .init(width: 96, height: 96))
        
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 0.4, expect: .init(width: 38.4, height: 38.4))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 2,   expect: .init(width: 192, height: 192))
        
        testScaling(.fit,.down,     .squareLarge__960_960, by: 0.5, expect: .init(width: 480, height: 480))
        testScaling(.fit,.down,     .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fit,.down,     .squareLarge__960_960, by: 1.8, expect: .init(width: 960, height: 960))
        
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 0.5, expect: .init(width: 480, height: 480))
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 1.8, expect: .init(width: 1728, height: 1728))
    }
    
    
    func test_fitSquareRectInSquareContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .squareMedium__96_96, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .squareLarge__960_960, expect: .squareSmall__12_12))
        
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .squareLarge__960_960, expect: .squareMedium__96_96))
        
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.fit,.down,     .squareSmall__12_12, by: 0.4, expect: .init(width: 4.8, height: 4.8))
        testScaling(.fit,.down,     .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fit,.down,     .squareSmall__12_12, by: 5,   expect: .init(width: 12, height: 12))
        
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 0.4, expect: .init(width: 4.8, height: 4.8))
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 5,   expect: .init(width: 60, height: 60))
        
        testScaling(.fit,.down,     .squareMedium__96_96, by: 0.2, expect: .init(width: 19.2, height: 19.2))
        testScaling(.fit,.down,     .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fit,.down,     .squareMedium__96_96, by: 3,   expect: .init(width: 96, height: 96))
        
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 0.2, expect: .init(width: 19.2, height: 19.2))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 3,   expect: .init(width: 288, height: 288))
        
        testScaling(.fit,.down,     .squareLarge__960_960, by: 0.05, expect: .init(width: 48, height: 48))
        testScaling(.fit,.down,     .squareLarge__960_960, by: 1,    expect: .init(width: 960, height: 960))
        testScaling(.fit,.down,     .squareLarge__960_960, by: 10,   expect: .init(width: 960, height: 960))
        
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 0.05, expect: .init(width: 48, height: 48))
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 1,    expect: .init(width: 960, height: 960))
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 10,   expect: .init(width: 9600, height: 9600))
    }
    
    
    func test_fitSquareRectInTallContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareSmall__12_12, within: .tall__12_18,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .extremelyTall__12_960, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .veryTall__12_96,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareMedium__96_96, within: .tall__12_18,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .extremelyTall__12_960, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .veryTall__12_96,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .squareLarge__960_960, within: .tall__12_18,           expect: .init(width: 12, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareSmall__12_12, within: .tall__12_18,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .extremelyTall__12_960, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .veryTall__12_96,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareMedium__96_96, within: .tall__12_18,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .extremelyTall__12_960, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .veryTall__12_96,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .squareLarge__960_960, within: .tall__12_18,           expect: .init(width: 12, height: 12)))
        
        
        // Test dimensional scaling for squares
        testScaling(.fit,.down,     .squareSmall__12_12, by: 0.5, expect: .init(width: 6, height: 6))
        testScaling(.fit,.down,     .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fit,.down,     .squareSmall__12_12, by: 2,   expect: .init(width: 12, height: 12))
        
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 0.5, expect: .init(width: 6, height: 6))
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 2,   expect: .init(width: 24, height: 24))
        
        testScaling(.fit,.down,     .squareMedium__96_96, by: 0.25, expect: .init(width: 24, height: 24))
        testScaling(.fit,.down,     .squareMedium__96_96, by: 1,    expect: .init(width: 96, height: 96))
        testScaling(.fit,.down,     .squareMedium__96_96, by: 1.5,  expect: .init(width: 96, height: 96))
        
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 0.25, expect: .init(width: 24, height: 24))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 1,    expect: .init(width: 96, height: 96))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 1.5,  expect: .init(width: 144, height: 144))
        
        testScaling(.fit,.down,     .squareLarge__960_960, by: 0.1, expect: .init(width: 96, height: 96))
        testScaling(.fit,.down,     .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fit,.down,     .squareLarge__960_960, by: 2,   expect: .init(width: 960, height: 960))
        
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 0.1, expect: .init(width: 96, height: 96))
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fit,.upOrDown, .squareLarge__960_960, by: 2,   expect: .init(width: 1920, height: 1920))
    }
    
    
    // MARK: Fit tall in ___
    
    func test_fitTallRectInWideContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .veryWide__96_12,       expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .wide__18_12,           expect: .init(width: 0.15, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96, within: .extremelyWide__960_12, expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96, within: .veryWide__96_12,       expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96, within: .wide__18_12,           expect: .init(width: 1.5, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18, within: .extremelyWide__960_12, expect: .init(width: 8, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18, within: .veryWide__96_12,       expect: .init(width: 8, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18, within: .wide__18_12,           expect: .init(width: 8, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .veryWide__96_12,       expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .wide__18_12,           expect: .init(width: 0.15, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96, within: .extremelyWide__960_12, expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96, within: .veryWide__96_12,       expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96, within: .wide__18_12,           expect: .init(width: 1.5, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18, within: .extremelyWide__960_12, expect: .init(width: 8, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18, within: .veryWide__96_12,       expect: .init(width: 8, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18, within: .wide__18_12,           expect: .init(width: 8, height: 12)))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.fit,.down,     .tall__12_18, by: 0.3, expect: .init(width: 3.6, height: 5.4))
        testScaling(.fit,.down,     .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fit,.down,     .tall__12_18, by: 4,   expect: .init(width: 12, height: 18))
        
        testScaling(.fit,.upOrDown, .tall__12_18, by: 0.3, expect: .init(width: 3.6, height: 5.4))
        testScaling(.fit,.upOrDown, .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fit,.upOrDown, .tall__12_18, by: 4,   expect: .init(width: 48, height: 72))
        
        testScaling(.fit,.down,     .veryTall__12_96, by: 0.5, expect: .init(width: 6, height: 48))
        testScaling(.fit,.down,     .veryTall__12_96, by: 1,   expect: .init(width: 12, height: 96))
        testScaling(.fit,.down,     .veryTall__12_96, by: 2,   expect: .init(width: 12, height: 96))
        
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 0.5, expect: .init(width: 6, height: 48))
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 1,   expect: .init(width: 12, height: 96))
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 2,   expect: .init(width: 24, height: 192))
        
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 0.15, expect: .init(width: 1.8, height: 144))
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 3,    expect: .init(width: 12, height: 960))
        
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 0.15, expect: .init(width: 1.8, height: 144))
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 3,    expect: .init(width: 36, height: 2880))
    }
    
    
    func test_fitTallRectInSquareContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .squareSmall__12_12, expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96,       within: .squareSmall__12_12, expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18,           within: .squareSmall__12_12, expect: .init(width: 8, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .squareMedium__96_96, expect: .init(width: 1.2, height: 96)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96,       within: .squareMedium__96_96, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18,           within: .squareMedium__96_96, expect: .init(width: 12, height: 18)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .squareLarge__960_960, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96,       within: .squareLarge__960_960, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18,           within: .squareLarge__960_960, expect: .init(width: 12, height: 18)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .squareSmall__12_12, expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96,       within: .squareSmall__12_12, expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18,           within: .squareSmall__12_12, expect: .init(width: 8, height: 12)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .squareMedium__96_96, expect: .init(width: 1.2, height: 96)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96,       within: .squareMedium__96_96, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18,           within: .squareMedium__96_96, expect: .init(width: 64, height: 96)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .squareLarge__960_960, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96,       within: .squareLarge__960_960, expect: .init(width: 120, height: 960)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18,           within: .squareLarge__960_960, expect: .init(width: 640, height: 960)))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.fit,.down,     .tall__12_18, by: 0.7, expect: .init(width: 8.4, height: 12.6))
        testScaling(.fit,.down,     .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fit,.down,     .tall__12_18, by: 2,   expect: .init(width: 12, height: 18))
        
        testScaling(.fit,.upOrDown, .tall__12_18, by: 0.7, expect: .init(width: 8.4, height: 12.6))
        testScaling(.fit,.upOrDown, .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fit,.upOrDown, .tall__12_18, by: 2,   expect: .init(width: 24, height: 36))
        
        testScaling(.fit,.down,     .veryTall__12_96, by: 0.6, expect: .init(width: 7.2, height: 57.6))
        testScaling(.fit,.down,     .veryTall__12_96, by: 1,   expect: .init(width: 12, height: 96))
        testScaling(.fit,.down,     .veryTall__12_96, by: 1.8, expect: .init(width: 12, height: 96))
        
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 0.6, expect: .init(width: 7.2, height: 57.6))
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 1,   expect: .init(width: 12, height: 96))
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 1.8, expect: .init(width: 21.6, height: 172.8))
        
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 0.3, expect: .init(width: 3.6, height: 288))
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 1,   expect: .init(width: 12, height: 960))
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 5,   expect: .init(width: 12, height: 960))
        
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 0.3, expect: .init(width: 3.6, height: 288))
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 1,   expect: .init(width: 12, height: 960))
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 5,   expect: .init(width: 60, height: 4800))
    }
    
    
    func test_fitTallRectInTallContainer() {
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .veryTall__12_96,       expect: .init(width: 1.2, height: 96)))
        XCTAssertTrue(testScaling(.fit,.down,  .extremelyTall__12_960, within: .tall__12_18,           expect: .init(width: 0.225, height: 18)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96, within: .extremelyTall__12_960, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96, within: .veryTall__12_96,       expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fit,.down,  .veryTall__12_96, within: .tall__12_18,           expect: .init(width: 2.25, height: 18)))
        
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18, within: .extremelyTall__12_960, expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18, within: .veryTall__12_96,       expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fit,.down,  .tall__12_18, within: .tall__12_18,           expect: .init(width: 12, height: 18)))
        
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .veryTall__12_96,       expect: .init(width: 1.2, height: 96)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .extremelyTall__12_960, within: .tall__12_18,           expect: .init(width: 0.225, height: 18)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96, within: .extremelyTall__12_960, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96, within: .veryTall__12_96,       expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .veryTall__12_96, within: .tall__12_18,           expect: .init(width: 2.25, height: 18)))
        
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18, within: .extremelyTall__12_960, expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18, within: .veryTall__12_96,       expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fit,.upOrDown,  .tall__12_18, within: .tall__12_18,           expect: .init(width: 12, height: 18)))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.fit,.down,     .tall__12_18, by: 0.5, expect: .init(width: 6, height: 9))
        testScaling(.fit,.down,     .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fit,.down,     .tall__12_18, by: 2.5, expect: .init(width: 12, height: 18))
        
        testScaling(.fit,.upOrDown, .tall__12_18, by: 0.5, expect: .init(width: 6, height: 9))
        testScaling(.fit,.upOrDown, .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fit,.upOrDown, .tall__12_18, by: 2.5, expect: .init(width: 30, height: 45))
        
        testScaling(.fit,.down,     .veryTall__12_96, by: 0.25, expect: .init(width: 3, height: 24))
        testScaling(.fit,.down,     .veryTall__12_96, by: 1,    expect: .init(width: 12, height: 96))
        testScaling(.fit,.down,     .veryTall__12_96, by: 3,    expect: .init(width: 12, height: 96))
        
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 0.25, expect: .init(width: 3, height: 24))
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 1,    expect: .init(width: 12, height: 96))
        testScaling(.fit,.upOrDown, .veryTall__12_96, by: 3,    expect: .init(width: 36, height: 288))
        
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 0.1,  expect: .init(width: 1.2, height: 96))
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fit,.down,     .extremelyTall__12_960, by: 1.25, expect: .init(width: 12, height: 960))
        
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 0.1,  expect: .init(width: 1.2, height: 96))
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fit,.upOrDown, .extremelyTall__12_960, by: 1.25, expect: .init(width: 15, height: 1200))
    }
    
    
    // MARK: - Edge Cases for Dimensional Scaling
    
    func test_dimensionalScalingEdgeCases() {
        // Test identity (multiplier = 1.0)
        testScaling(.fit,.down,     .wide__18_12, by: 1.0, expect: .init(width: 18, height: 12))
        testScaling(.fit,.upOrDown, .wide__18_12, by: 1.0, expect: .init(width: 18, height: 12))
        
        // Test very small multipliers
        testScaling(.fit,.down,     .squareMedium__96_96, by: 0.01, expect: .init(width: 0.96, height: 0.96))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 0.01, expect: .init(width: 0.96, height: 0.96))
        
        // Test large multipliers with .down (should not scale up)
        testScaling(.fit,.down, .wide__18_12,         by: 10,  expect: .init(width: 18, height: 12))
        testScaling(.fit,.down, .squareSmall__12_12,  by: 100, expect: .init(width: 12, height: 12))
        testScaling(.fit,.down, .tall__12_18,         by: 5,   expect: .init(width: 12, height: 18))
        
        // Test large multipliers with .upOrDown (should scale up)
        testScaling(.fit,.upOrDown, .wide__18_12,        by: 10,  expect: .init(width: 180, height: 120))
        testScaling(.fit,.upOrDown, .squareSmall__12_12, by: 100, expect: .init(width: 1200, height: 1200))
        testScaling(.fit,.upOrDown, .tall__12_18,        by: 5,   expect: .init(width: 60, height: 90))
        
        // Test fractional multipliers
        testScaling(.fit,.down,     .squareMedium__96_96, by: 0.333, expect: .init(width: 31.968, height: 31.968))
        testScaling(.fit,.upOrDown, .squareMedium__96_96, by: 1.5,   expect: .init(width: 144, height: 144))
        testScaling(.fit,.upOrDown, .wide__18_12,         by: 2.75,  expect: .init(width: 49.5, height: 33))
    }
    
    
    // MARK: - Fill
    
    
    
    // MARK: Fill wide in ___
    
    func test_fillWideRectInWideContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .veryWide__96_12,       expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .wide__18_12,           expect: .init(width: 960, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12, within: .extremelyWide__960_12, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12, within: .wide__18_12,           expect: .init(width: 96, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12, within: .extremelyWide__960_12, expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12, within: .veryWide__96_12,       expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12, within: .wide__18_12,           expect: .init(width: 18, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .veryWide__96_12,       expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .wide__18_12,           expect: .init(width: 960, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12, within: .extremelyWide__960_12, expect: .init(width: 960, height: 120)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12, within: .wide__18_12,           expect: .init(width: 96, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12, within: .extremelyWide__960_12, expect: .init(width: 960, height: 640)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 64)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12, within: .wide__18_12,           expect: .init(width: 18, height: 12)))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.fill,.down,     .wide__18_12, by: 0.8, expect: .init(width: 14.4, height: 9.6))
        testScaling(.fill,.down,     .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fill,.down,     .wide__18_12, by: 1.5, expect: .init(width: 18, height: 12))
        
        testScaling(.fill,.upOrDown, .wide__18_12, by: 0.8, expect: .init(width: 14.4, height: 9.6))
        testScaling(.fill,.upOrDown, .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fill,.upOrDown, .wide__18_12, by: 1.5, expect: .init(width: 27, height: 18))
        
        testScaling(.fill,.down,     .veryWide__96_12, by: 0.6, expect: .init(width: 57.6, height: 7.2))
        testScaling(.fill,.down,     .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fill,.down,     .veryWide__96_12, by: 4,   expect: .init(width: 96, height: 12))
        
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 0.6, expect: .init(width: 57.6, height: 7.2))
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 4,   expect: .init(width: 384, height: 48))
        
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 0.4, expect: .init(width: 384, height: 4.8))
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 2,   expect: .init(width: 960, height: 12))
        
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 0.4, expect: .init(width: 384, height: 4.8))
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 2,   expect: .init(width: 1920, height: 24))
    }
    
    
    func test_fillWideRectInSquareContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .squareSmall__12_12, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12,       within: .squareSmall__12_12, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12,           within: .squareSmall__12_12, expect: .init(width: 18, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .squareMedium__96_96, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12,       within: .squareMedium__96_96, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12,           within: .squareMedium__96_96, expect: .init(width: 18, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .squareLarge__960_960, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12,       within: .squareLarge__960_960, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12,           within: .squareLarge__960_960, expect: .init(width: 18, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .squareSmall__12_12, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12,       within: .squareSmall__12_12, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12,           within: .squareSmall__12_12, expect: .init(width: 18, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .squareMedium__96_96, expect: .init(width: 7_680, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12,       within: .squareMedium__96_96, expect: .init(width: 768, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12,           within: .squareMedium__96_96, expect: .init(width: 144, height: 96)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .squareLarge__960_960, expect: .init(width: 76_800, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12,       within: .squareLarge__960_960, expect: .init(width: 7_680, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12,           within: .squareLarge__960_960, expect: .init(width: 1_440, height: 960)))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.fill,.down,     .wide__18_12, by: 0.5, expect: .init(width: 9, height: 6))
        testScaling(.fill,.down,     .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fill,.down,     .wide__18_12, by: 3,   expect: .init(width: 18, height: 12))
        
        testScaling(.fill,.upOrDown, .wide__18_12, by: 0.5, expect: .init(width: 9, height: 6))
        testScaling(.fill,.upOrDown, .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fill,.upOrDown, .wide__18_12, by: 3,   expect: .init(width: 54, height: 36))
        
        testScaling(.fill,.down,     .veryWide__96_12, by: 0.75, expect: .init(width: 72, height: 9))
        testScaling(.fill,.down,     .veryWide__96_12, by: 1,    expect: .init(width: 96, height: 12))
        testScaling(.fill,.down,     .veryWide__96_12, by: 2,    expect: .init(width: 96, height: 12))
        
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 0.75, expect: .init(width: 72, height: 9))
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 1,    expect: .init(width: 96, height: 12))
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 2,    expect: .init(width: 192, height: 24))
        
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 0.3, expect: .init(width: 288, height: 3.6))
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 5,   expect: .init(width: 960, height: 12))
        
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 0.3, expect: .init(width: 288, height: 3.6))
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 5,   expect: .init(width: 4800, height: 60))
    }
    
    
    func test_fillWideRectInTallContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .veryTall__12_96,       expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyWide__960_12, within: .tall__12_18,           expect: .init(width: 960, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12, within: .extremelyTall__12_960, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12, within: .veryTall__12_96,       expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryWide__96_12, within: .tall__12_18,           expect: .init(width: 96, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12, within: .extremelyTall__12_960, expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12, within: .veryTall__12_96,       expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .wide__18_12, within: .tall__12_18,           expect: .init(width: 18, height: 12)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .init(width: 76_800, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .veryTall__12_96,       expect: .init(width: 7_680, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyWide__960_12, within: .tall__12_18,           expect: .init(width: 1_440, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12, within: .extremelyTall__12_960, expect: .init(width: 7_680, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12, within: .veryTall__12_96,       expect: .init(width: 768, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryWide__96_12, within: .tall__12_18,           expect: .init(width: 144, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12, within: .extremelyTall__12_960, expect: .init(width: 1440, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12, within: .veryTall__12_96,       expect: .init(width: 144, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .wide__18_12, within: .tall__12_18,           expect: .init(width: 27, height: 18)))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.fill,.down,     .wide__18_12, by: 0.4, expect: .init(width: 7.2, height: 4.8))
        testScaling(.fill,.down,     .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fill,.down,     .wide__18_12, by: 2.5, expect: .init(width: 18, height: 12))
        
        testScaling(.fill,.upOrDown, .wide__18_12, by: 0.4, expect: .init(width: 7.2, height: 4.8))
        testScaling(.fill,.upOrDown, .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fill,.upOrDown, .wide__18_12, by: 2.5, expect: .init(width: 45, height: 30))
        
        testScaling(.fill,.down,     .veryWide__96_12, by: 0.9, expect: .init(width: 86.4, height: 10.8))
        testScaling(.fill,.down,     .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fill,.down,     .veryWide__96_12, by: 1.2, expect: .init(width: 96, height: 12))
        
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 0.9, expect: .init(width: 86.4, height: 10.8))
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.fill,.upOrDown, .veryWide__96_12, by: 1.2, expect: .init(width: 115.2, height: 14.4))
        
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 0.6, expect: .init(width: 576, height: 7.2))
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fill,.down,     .extremelyWide__960_12, by: 1.7, expect: .init(width: 960, height: 12))
        
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 0.6, expect: .init(width: 576, height: 7.2))
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.fill,.upOrDown, .extremelyWide__960_12, by: 1.7, expect: .init(width: 1632, height: 20.4))
    }
    
    
    // MARK: Fill square in ___
    
    func test_fillSquareRectInWideContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .extremelyWide__960_12, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .veryWide__96_12,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .wide__18_12,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .extremelyWide__960_12, expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .veryWide__96_12,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .wide__18_12,           expect: .init(width: 18, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .extremelyWide__960_12, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .veryWide__96_12,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .wide__18_12,           expect: .init(width: 18, height: 18)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .extremelyWide__960_12, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .veryWide__96_12,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .wide__18_12,           expect: .init(width: 18, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .extremelyWide__960_12, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .veryWide__96_12,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .wide__18_12,           expect: .init(width: 18, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .extremelyWide__960_12, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .veryWide__96_12,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .wide__18_12,           expect: .init(width: 18, height: 18)))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.fill,.down,     .squareSmall__12_12, by: 0.7, expect: .init(width: 8.4, height: 8.4))
        testScaling(.fill,.down,     .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fill,.down,     .squareSmall__12_12, by: 2,   expect: .init(width: 12, height: 12))
        
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 0.7, expect: .init(width: 8.4, height: 8.4))
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 2,   expect: .init(width: 24, height: 24))
        
        testScaling(.fill,.down,     .squareMedium__96_96, by: 0.3, expect: .init(width: 28.8, height: 28.8))
        testScaling(.fill,.down,     .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fill,.down,     .squareMedium__96_96, by: 4,   expect: .init(width: 96, height: 96))
        
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 0.3, expect: .init(width: 28.8, height: 28.8))
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 4,   expect: .init(width: 384, height: 384))
        
        testScaling(.fill,.down,     .squareLarge__960_960, by: 0.8, expect: .init(width: 768, height: 768))
        testScaling(.fill,.down,     .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fill,.down,     .squareLarge__960_960, by: 1.5, expect: .init(width: 960, height: 960))
        
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 0.8, expect: .init(width: 768, height: 768))
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 1.5, expect: .init(width: 1440, height: 1440))
    }
    
    
    func test_fillSquareRectInSquareContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .squareMedium__96_96, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .squareLarge__960_960, expect: .squareSmall__12_12))
        
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .squareLarge__960_960, expect: .squareMedium__96_96))
        
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.fill,.down,     .squareSmall__12_12, by: 0.5, expect: .init(width: 6, height: 6))
        testScaling(.fill,.down,     .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fill,.down,     .squareSmall__12_12, by: 3,   expect: .init(width: 12, height: 12))
        
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 0.5, expect: .init(width: 6, height: 6))
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 3,   expect: .init(width: 36, height: 36))
        
        testScaling(.fill,.down,     .squareMedium__96_96, by: 0.4, expect: .init(width: 38.4, height: 38.4))
        testScaling(.fill,.down,     .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fill,.down,     .squareMedium__96_96, by: 2,   expect: .init(width: 96, height: 96))
        
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 0.4, expect: .init(width: 38.4, height: 38.4))
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 2,   expect: .init(width: 192, height: 192))
        
        testScaling(.fill,.down,     .squareLarge__960_960, by: 0.2, expect: .init(width: 192, height: 192))
        testScaling(.fill,.down,     .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fill,.down,     .squareLarge__960_960, by: 5,   expect: .init(width: 960, height: 960))
        
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 0.2, expect: .init(width: 192, height: 192))
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 1,   expect: .init(width: 960, height: 960))
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 5,   expect: .init(width: 4800, height: 4800))
    }
    
    
    func test_fillSquareRectInTallContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .extremelyTall__12_960, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .veryTall__12_96,       expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareSmall__12_12, within: .tall__12_18,           expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .extremelyTall__12_960, expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .veryTall__12_96,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareMedium__96_96, within: .tall__12_18,           expect: .init(width: 18, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .extremelyTall__12_960, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .veryTall__12_96,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .squareLarge__960_960, within: .tall__12_18,           expect: .init(width: 18, height: 18)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .extremelyTall__12_960, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .veryTall__12_96,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareSmall__12_12, within: .tall__12_18,           expect: .init(width: 18, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .extremelyTall__12_960, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .veryTall__12_96,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareMedium__96_96, within: .tall__12_18,           expect: .init(width: 18, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .extremelyTall__12_960, expect: .init(width: 960, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .veryTall__12_96,       expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .squareLarge__960_960, within: .tall__12_18,           expect: .init(width: 18, height: 18)))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.fill,.down,     .squareSmall__12_12, by: 0.6, expect: .init(width: 7.2, height: 7.2))
        testScaling(.fill,.down,     .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fill,.down,     .squareSmall__12_12, by: 2.5, expect: .init(width: 12, height: 12))
        
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 0.6, expect: .init(width: 7.2, height: 7.2))
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 1,   expect: .init(width: 12, height: 12))
        testScaling(.fill,.upOrDown, .squareSmall__12_12, by: 2.5, expect: .init(width: 30, height: 30))
        
        testScaling(.fill,.down,     .squareMedium__96_96, by: 0.7, expect: .init(width: 67.2, height: 67.2))
        testScaling(.fill,.down,     .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fill,.down,     .squareMedium__96_96, by: 1.4, expect: .init(width: 96, height: 96))
        
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 0.7, expect: .init(width: 67.2, height: 67.2))
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 1,   expect: .init(width: 96, height: 96))
        testScaling(.fill,.upOrDown, .squareMedium__96_96, by: 1.4, expect: .init(width: 134.4, height: 134.4))
        
        testScaling(.fill,.down,     .squareLarge__960_960, by: 0.15, expect: .init(width: 144, height: 144))
        testScaling(.fill,.down,     .squareLarge__960_960, by: 1,    expect: .init(width: 960, height: 960))
        testScaling(.fill,.down,     .squareLarge__960_960, by: 3,    expect: .init(width: 960, height: 960))
        
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 0.15, expect: .init(width: 144, height: 144))
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 1,    expect: .init(width: 960, height: 960))
        testScaling(.fill,.upOrDown, .squareLarge__960_960, by: 3,    expect: .init(width: 2880, height: 2880))
    }
    
    
    // MARK: Fill tall in ___
    
    func test_fillTallRectInWideContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .veryWide__96_12,       expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .wide__18_12,           expect: .init(width: 12, height: 960)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96, within: .extremelyWide__960_12, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96, within: .veryWide__96_12,       expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96, within: .wide__18_12,           expect: .init(width: 12, height: 96)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18, within: .extremelyWide__960_12, expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18, within: .veryWide__96_12,       expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18, within: .wide__18_12,           expect: .init(width: 12, height: 18)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .init(width: 960, height: 76_800)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .veryWide__96_12,       expect: .init(width: 96, height: 7_680)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .wide__18_12,           expect: .init(width: 18, height: 1_440)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96, within: .extremelyWide__960_12, expect: .init(width: 960, height: 7_680)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96, within: .veryWide__96_12,       expect: .init(width: 96, height: 768)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96, within: .wide__18_12,           expect: .init(width: 18, height: 144)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18, within: .extremelyWide__960_12, expect: .init(width: 960, height: 1_440)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18, within: .veryWide__96_12,       expect: .init(width: 96, height: 144)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18, within: .wide__18_12,           expect: .init(width: 18, height: 27)))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.fill,.down,     .tall__12_18, by: 0.8, expect: .init(width: 9.6, height: 14.4))
        testScaling(.fill,.down,     .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fill,.down,     .tall__12_18, by: 1.5, expect: .init(width: 12, height: 18))
        
        testScaling(.fill,.upOrDown, .tall__12_18, by: 0.8, expect: .init(width: 9.6, height: 14.4))
        testScaling(.fill,.upOrDown, .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fill,.upOrDown, .tall__12_18, by: 1.5, expect: .init(width: 18, height: 27))
        
        testScaling(.fill,.down,     .veryTall__12_96, by: 0.5, expect: .init(width: 6, height: 48))
        testScaling(.fill,.down,     .veryTall__12_96, by: 1,   expect: .init(width: 12, height: 96))
        testScaling(.fill,.down,     .veryTall__12_96, by: 4,   expect: .init(width: 12, height: 96))
        
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 0.5, expect: .init(width: 6, height: 48))
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 1,   expect: .init(width: 12, height: 96))
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 4,   expect: .init(width: 48, height: 384))
        
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 0.25, expect: .init(width: 3, height: 240))
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 2,    expect: .init(width: 12, height: 960))
        
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 0.25, expect: .init(width: 3, height: 240))
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 2,    expect: .init(width: 24, height: 1920))
    }
    
    
    func test_fillTallRectInSquareContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .squareSmall__12_12, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96,       within: .squareSmall__12_12, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18,           within: .squareSmall__12_12, expect: .init(width: 12, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .squareMedium__96_96, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96,       within: .squareMedium__96_96, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18,           within: .squareMedium__96_96, expect: .init(width: 12, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .squareLarge__960_960, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96,       within: .squareLarge__960_960, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18,           within: .squareLarge__960_960, expect: .init(width: 12, height: 18)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .squareSmall__12_12, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96,       within: .squareSmall__12_12, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18,           within: .squareSmall__12_12, expect: .init(width: 12, height: 18)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .squareMedium__96_96, expect: .init(width: 96, height: 7_680)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96,       within: .squareMedium__96_96, expect: .init(width: 96, height: 768)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18,           within: .squareMedium__96_96, expect: .init(width: 96, height: 144)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .squareLarge__960_960, expect: .init(width: 960, height: 76_800)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96,       within: .squareLarge__960_960, expect: .init(width: 960, height: 7_680)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18,           within: .squareLarge__960_960, expect: .init(width: 960, height: 1_440)))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.fill,.down,     .tall__12_18, by: 0.4, expect: .init(width: 4.8, height: 7.2))
        testScaling(.fill,.down,     .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fill,.down,     .tall__12_18, by: 3,   expect: .init(width: 12, height: 18))
        
        testScaling(.fill,.upOrDown, .tall__12_18, by: 0.4, expect: .init(width: 4.8, height: 7.2))
        testScaling(.fill,.upOrDown, .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fill,.upOrDown, .tall__12_18, by: 3,   expect: .init(width: 36, height: 54))
        
        testScaling(.fill,.down,     .veryTall__12_96, by: 0.75, expect: .init(width: 9, height: 72))
        testScaling(.fill,.down,     .veryTall__12_96, by: 1,    expect: .init(width: 12, height: 96))
        testScaling(.fill,.down,     .veryTall__12_96, by: 2,    expect: .init(width: 12, height: 96))
        
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 0.75, expect: .init(width: 9, height: 72))
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 1,    expect: .init(width: 12, height: 96))
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 2,    expect: .init(width: 24, height: 192))
        
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 0.3, expect: .init(width: 3.6, height: 288))
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 1,   expect: .init(width: 12, height: 960))
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 5,   expect: .init(width: 12, height: 960))
        
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 0.3, expect: .init(width: 3.6, height: 288))
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 1,   expect: .init(width: 12, height: 960))
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 5,   expect: .init(width: 60, height: 4800))
    }
    
    
    func test_fillTallRectInTallContainer() {
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .veryTall__12_96,       expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.down,  .extremelyTall__12_960, within: .tall__12_18,           expect: .init(width: 12, height: 960)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96, within: .extremelyTall__12_960, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96, within: .veryTall__12_96,       expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.down,  .veryTall__12_96, within: .tall__12_18,           expect: .init(width: 12, height: 96)))
        
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18, within: .extremelyTall__12_960, expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18, within: .veryTall__12_96,       expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.fill,.down,  .tall__12_18, within: .tall__12_18,           expect: .init(width: 12, height: 18)))
        
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .veryTall__12_96,       expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .extremelyTall__12_960, within: .tall__12_18,           expect: .init(width: 12, height: 960)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96, within: .extremelyTall__12_960, expect: .init(width: 120, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96, within: .veryTall__12_96,       expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .veryTall__12_96, within: .tall__12_18,           expect: .init(width: 12, height: 96)))
        
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18, within: .extremelyTall__12_960, expect: .init(width: 640, height: 960)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18, within: .veryTall__12_96,       expect: .init(width: 64, height: 96)))
        XCTAssertTrue(testScaling(.fill,.upOrDown,  .tall__12_18, within: .tall__12_18,           expect: .init(width: 12, height: 18)))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.fill,.down,     .tall__12_18, by: 0.5, expect: .init(width: 6, height: 9))
        testScaling(.fill,.down,     .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fill,.down,     .tall__12_18, by: 2.5, expect: .init(width: 12, height: 18))
        
        testScaling(.fill,.upOrDown, .tall__12_18, by: 0.5, expect: .init(width: 6, height: 9))
        testScaling(.fill,.upOrDown, .tall__12_18, by: 1,   expect: .init(width: 12, height: 18))
        testScaling(.fill,.upOrDown, .tall__12_18, by: 2.5, expect: .init(width: 30, height: 45))
        
        testScaling(.fill,.down,     .veryTall__12_96, by: 0.25, expect: .init(width: 3, height: 24))
        testScaling(.fill,.down,     .veryTall__12_96, by: 1,    expect: .init(width: 12, height: 96))
        testScaling(.fill,.down,     .veryTall__12_96, by: 3,    expect: .init(width: 12, height: 96))
        
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 0.25, expect: .init(width: 3, height: 24))
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 1,    expect: .init(width: 12, height: 96))
        testScaling(.fill,.upOrDown, .veryTall__12_96, by: 3,    expect: .init(width: 36, height: 288))
        
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 0.1,  expect: .init(width: 1.2, height: 96))
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fill,.down,     .extremelyTall__12_960, by: 1.25, expect: .init(width: 12, height: 960))
        
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 0.1,  expect: .init(width: 1.2, height: 96))
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 1,    expect: .init(width: 12, height: 960))
        testScaling(.fill,.upOrDown, .extremelyTall__12_960, by: 1.25, expect: .init(width: 15, height: 1200))
    }
    
    
    // MARK: - Stretch
    
    
    
    // MARK: Stretch wide in ___
    
    func test_stretchWideRectInWideContainer() {
        // When stretching, the child should match the parent exactly regardless of aspect ratio, centered.
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .extremelyWide__960_12, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .extremelyWide__960_12, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .veryWide__96_12, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.stretch,.down,     .wide__18_12, by: 0.6, expect: .init(width: 10.8, height: 7.2))
        testScaling(.stretch,.down,     .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.stretch,.down,     .wide__18_12, by: 2,   expect: .init(width: 18, height: 12))
        
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 0.6, expect: .init(width: 10.8, height: 7.2))
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 2,   expect: .init(width: 36, height: 24))
        
        testScaling(.stretch,.down,     .veryWide__96_12, by: 0.5, expect: .init(width: 48, height: 6))
        testScaling(.stretch,.down,     .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.stretch,.down,     .veryWide__96_12, by: 3,   expect: .init(width: 96, height: 12))
        
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 0.5, expect: .init(width: 48, height: 6))
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 1,   expect: .init(width: 96, height: 12))
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 3,   expect: .init(width: 288, height: 36))
        
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 0.4, expect: .init(width: 384, height: 4.8))
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 1.5, expect: .init(width: 960, height: 12))
        
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 0.4, expect: .init(width: 384, height: 4.8))
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 1,   expect: .init(width: 960, height: 12))
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 1.5, expect: .init(width: 1440, height: 18))
    }
    
    
    func test_stretchWideRectInSquareContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .squareMedium__96_96, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .squareMedium__96_96, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .squareMedium__96_96, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .squareLarge__960_960, expect: .extremelyWide__960_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .squareLarge__960_960, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .squareLarge__960_960, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.stretch,.down,     .wide__18_12, by: 0.5, expect: .init(width: 9, height: 6))
        testScaling(.stretch,.down,     .wide__18_12, by: 1, expect: .init(width: 18, height: 12))
        testScaling(.stretch,.down,     .wide__18_12, by: 2, expect: .init(width: 18, height: 12))
        
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 0.5, expect: .init(width: 9, height: 6))
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 1, expect: .init(width: 18, height: 12))
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 2, expect: .init(width: 36, height: 24))
        
        testScaling(.stretch,.down,     .veryWide__96_12, by: 0.7, expect: .init(width: 67.2, height: 8.4))
        testScaling(.stretch,.down,     .veryWide__96_12, by: 1, expect: .init(width: 96, height: 12))
        testScaling(.stretch,.down,     .veryWide__96_12, by: 1.5, expect: .init(width: 96, height: 12))
        
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 0.7, expect: .init(width: 67.2, height: 8.4))
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 1, expect: .init(width: 96, height: 12))
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 1.5, expect: .init(width: 144, height: 18))
        
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 0.3, expect: .init(width: 288, height: 3.6))
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 1, expect: .init(width: 960, height: 12))
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 3, expect: .init(width: 960, height: 12))
        
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 0.3, expect: .init(width: 288, height: 3.6))
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 1, expect: .init(width: 960, height: 12))
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 3, expect: .init(width: 2880, height: 36))
    }
    
    
    func test_stretchWideRectInTallContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .extremelyTall__12_960, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .extremelyTall__12_960, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyWide__960_12, within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryWide__96_12,       within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .wide__18_12,           within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyWide__960_12, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryWide__96_12,       within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .wide__18_12,           within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for wide rectangles
        testScaling(.stretch,.down,     .wide__18_12, by: 0.8, expect: .init(width: 14.4, height: 9.6))
        testScaling(.stretch,.down,     .wide__18_12, by: 1, expect: .init(width: 18, height: 12))
        testScaling(.stretch,.down,     .wide__18_12, by: 1.2, expect: .init(width: 18, height: 12))
        
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 0.8, expect: .init(width: 14.4, height: 9.6))
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 1, expect: .init(width: 18, height: 12))
        testScaling(.stretch,.upOrDown, .wide__18_12, by: 1.2, expect: .init(width: 21.6, height: 14.4))
        
        testScaling(.stretch,.down,     .veryWide__96_12, by: 0.4, expect: .init(width: 38.4, height: 4.8))
        testScaling(.stretch,.down,     .veryWide__96_12, by: 1, expect: .init(width: 96, height: 12))
        testScaling(.stretch,.down,     .veryWide__96_12, by: 2, expect: .init(width: 96, height: 12))
        
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 0.4, expect: .init(width: 38.4, height: 4.8))
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 1, expect: .init(width: 96, height: 12))
        testScaling(.stretch,.upOrDown, .veryWide__96_12, by: 2, expect: .init(width: 192, height: 24))
        
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 0.25, expect: .init(width: 240, height: 3))
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 1, expect: .init(width: 960, height: 12))
        testScaling(.stretch,.down,     .extremelyWide__960_12, by: 4, expect: .init(width: 960, height: 12))
        
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 0.25, expect: .init(width: 240, height: 3))
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 1, expect: .init(width: 960, height: 12))
        testScaling(.stretch,.upOrDown, .extremelyWide__960_12, by: 4, expect: .init(width: 3840, height: 48))
    }
    
    
    // MARK: Stretch square in ___
    
    func test_stretchSquareRectInWideContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .extremelyWide__960_12, expect: .squareSmall__12_12,    aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .extremelyWide__960_12, expect: .veryWide__96_12,       aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .veryWide__96_12, expect: .veryWide__96_12,    aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .veryWide__96_12, expect: .veryWide__96_12,    aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .wide__18_12, expect: .wide__18_12,        aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .wide__18_12, expect: .wide__18_12,        aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 0.5, expect: .init(width: 6, height: 6))
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 1, expect: .init(width: 12, height: 12))
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 2, expect: .init(width: 12, height: 12))
        
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 0.5, expect: .init(width: 6, height: 6))
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 1, expect: .init(width: 12, height: 12))
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 2, expect: .init(width: 24, height: 24))
        
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 0.3, expect: .init(width: 28.8, height: 28.8))
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 1.5, expect: .init(width: 96, height: 96))
        
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 0.3, expect: .init(width: 28.8, height: 28.8))
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 1.5, expect: .init(width: 144, height: 144))
        
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 0.1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 1, expect: .init(width: 960, height: 960))
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 3, expect: .init(width: 960, height: 960))
        
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 0.1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 1, expect: .init(width: 960, height: 960))
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 3, expect: .init(width: 2880, height: 2880))
    }
    
    
    func test_stretchSquareRectInSquareContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .squareMedium__96_96, expect: .squareSmall__12_12,  aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .squareLarge__960_960, expect: .squareSmall__12_12,   aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .squareLarge__960_960, expect: .squareMedium__96_96,  aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 0.4, expect: .init(width: 4.8, height: 4.8))
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 1, expect: .init(width: 12, height: 12))
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 3, expect: .init(width: 12, height: 12))
        
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 0.4, expect: .init(width: 4.8, height: 4.8))
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 1, expect: .init(width: 12, height: 12))
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 3, expect: .init(width: 36, height: 36))
        
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 0.5, expect: .init(width: 48, height: 48))
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 2, expect: .init(width: 96, height: 96))
        
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 0.5, expect: .init(width: 48, height: 48))
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 2, expect: .init(width: 192, height: 192))
        
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 0.2, expect: .init(width: 192, height: 192))
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 1, expect: .init(width: 960, height: 960))
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 5, expect: .init(width: 960, height: 960))
        
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 0.2, expect: .init(width: 192, height: 192))
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 1, expect: .init(width: 960, height: 960))
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 5, expect: .init(width: 4800, height: 4800))
    }
    
    
    func test_stretchSquareRectInTallContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .extremelyTall__12_960, expect: .squareSmall__12_12,    aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .extremelyTall__12_960, expect: .veryTall__12_96,       aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .squareSmall__12_12,   within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareMedium__96_96,  within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .squareLarge__960_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareSmall__12_12,   within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareMedium__96_96,  within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .squareLarge__960_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for square rectangles
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 0.6, expect: .init(width: 7.2, height: 7.2))
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 1, expect: .init(width: 12, height: 12))
        testScaling(.stretch,.down,     .squareSmall__12_12, by: 1.5, expect: .init(width: 12, height: 12))
        
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 0.6, expect: .init(width: 7.2, height: 7.2))
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 1, expect: .init(width: 12, height: 12))
        testScaling(.stretch,.upOrDown, .squareSmall__12_12, by: 1.5, expect: .init(width: 18, height: 18))
        
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 0.75, expect: .init(width: 72, height: 72))
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.down,     .squareMedium__96_96, by: 1.3, expect: .init(width: 96, height: 96))
        
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 0.75, expect: .init(width: 72, height: 72))
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 1, expect: .init(width: 96, height: 96))
        testScaling(.stretch,.upOrDown, .squareMedium__96_96, by: 1.3, expect: .init(width: 124.8, height: 124.8))
        
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 0.15, expect: .init(width: 144, height: 144))
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 1, expect: .init(width: 960, height: 960))
        testScaling(.stretch,.down,     .squareLarge__960_960, by: 2, expect: .init(width: 960, height: 960))
        
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 0.15, expect: .init(width: 144, height: 144))
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 1, expect: .init(width: 960, height: 960))
        testScaling(.stretch,.upOrDown, .squareLarge__960_960, by: 2, expect: .init(width: 1920, height: 1920))
    }
    
    
    // MARK: Stretch tall in ___
    
    func test_stretchTallRectInWideContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .extremelyWide__960_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .extremelyWide__960_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.stretch,.down,     .tall__12_18, by: 0.5, expect: .init(width: 6, height: 9))
        testScaling(.stretch,.down,     .tall__12_18, by: 1, expect: .init(width: 12, height: 18))
        testScaling(.stretch,.down,     .tall__12_18, by: 2, expect: .init(width: 12, height: 18))
        
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 0.5, expect: .init(width: 6, height: 9))
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 1, expect: .init(width: 12, height: 18))
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 2, expect: .init(width: 24, height: 36))
        
        testScaling(.stretch,.down,     .veryTall__12_96, by: 0.3, expect: .init(width: 3.6, height: 28.8))
        testScaling(.stretch,.down,     .veryTall__12_96, by: 1, expect: .init(width: 12, height: 96))
        testScaling(.stretch,.down,     .veryTall__12_96, by: 3, expect: .init(width: 12, height: 96))
        
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 0.3, expect: .init(width: 3.6, height: 28.8))
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 1, expect: .init(width: 12, height: 96))
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 3, expect: .init(width: 36, height: 288))
        
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 0.2, expect: .init(width: 2.4, height: 192))
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 1, expect: .init(width: 12, height: 960))
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 1.5, expect: .init(width: 12, height: 960))
        
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 0.2, expect: .init(width: 2.4, height: 192))
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 1, expect: .init(width: 12, height: 960))
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 1.5, expect: .init(width: 18, height: 1440))
    }

    func test_stretchTallRectInSquareContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .squareMedium__96_96, expect: .veryTall__12_96, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .squareMedium__96_96, expect: .veryTall__12_96, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .squareMedium__96_96, expect: .tall__12_18,     aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .squareLarge__960_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .squareLarge__960_960, expect: .veryTall__12_96,       aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .squareLarge__960_960, expect: .tall__12_18,           aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.stretch,.down,     .tall__12_18, by: 0.7, expect: .init(width: 8.4, height: 12.6))
        testScaling(.stretch,.down,     .tall__12_18, by: 1, expect: .init(width: 12, height: 18))
        testScaling(.stretch,.down,     .tall__12_18, by: 1.8, expect: .init(width: 12, height: 18))
        
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 0.7, expect: .init(width: 8.4, height: 12.6))
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 1, expect: .init(width: 12, height: 18))
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 1.8, expect: .init(width: 21.6, height: 32.4))
        
        testScaling(.stretch,.down,     .veryTall__12_96, by: 0.6, expect: .init(width: 7.2, height: 57.6))
        testScaling(.stretch,.down,     .veryTall__12_96, by: 1, expect: .init(width: 12, height: 96))
        testScaling(.stretch,.down,     .veryTall__12_96, by: 2, expect: .init(width: 12, height: 96))
        
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 0.6, expect: .init(width: 7.2, height: 57.6))
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 1, expect: .init(width: 12, height: 96))
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 2, expect: .init(width: 24, height: 192))
        
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 0.25, expect: .init(width: 3, height: 240))
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 1, expect: .init(width: 12, height: 960))
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 4, expect: .init(width: 12, height: 960))
        
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 0.25, expect: .init(width: 3, height: 240))
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 1, expect: .init(width: 12, height: 960))
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 4, expect: .init(width: 48, height: 3840))
    }

    func test_stretchTallRectInTallContainer() {
        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .extremelyTall__12_960, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .extremelyTall__12_960, expect: .tall__12_18, aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .veryTall__12_96, expect: .tall__12_18, aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch,.down,     .extremelyTall__12_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .veryTall__12_96,       within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.down,     .tall__12_18,           within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch,.upOrDown, .extremelyTall__12_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .veryTall__12_96,       within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch,.upOrDown, .tall__12_18,           within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        
        
        // Test dimensional scaling for tall rectangles
        testScaling(.stretch,.down,     .tall__12_18, by: 0.4, expect: .init(width: 4.8, height: 7.2))
        testScaling(.stretch,.down,     .tall__12_18, by: 1, expect: .init(width: 12, height: 18))
        testScaling(.stretch,.down,     .tall__12_18, by: 2.5, expect: .init(width: 12, height: 18))
        
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 0.4, expect: .init(width: 4.8, height: 7.2))
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 1, expect: .init(width: 12, height: 18))
        testScaling(.stretch,.upOrDown, .tall__12_18, by: 2.5, expect: .init(width: 30, height: 45))
        
        testScaling(.stretch,.down,     .veryTall__12_96, by: 0.25, expect: .init(width: 3, height: 24))
        testScaling(.stretch,.down,     .veryTall__12_96, by: 1, expect: .init(width: 12, height: 96))
        testScaling(.stretch,.down,     .veryTall__12_96, by: 3, expect: .init(width: 12, height: 96))
        
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 0.25, expect: .init(width: 3, height: 24))
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 1, expect: .init(width: 12, height: 96))
        testScaling(.stretch,.upOrDown, .veryTall__12_96, by: 3, expect: .init(width: 36, height: 288))
        
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 0.1, expect: .init(width: 1.2, height: 96))
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 1, expect: .init(width: 12, height: 960))
        testScaling(.stretch,.down,     .extremelyTall__12_960, by: 1.25, expect: .init(width: 12, height: 960))
        
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 0.1, expect: .init(width: 1.2, height: 96))
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 1, expect: .init(width: 12, height: 960))
        testScaling(.stretch,.upOrDown, .extremelyTall__12_960, by: 1.25, expect: .init(width: 15, height: 1200))
    }
    
    
    // MARK: - `allTests`
    
    static let allTests = [
        ("test_fitWideRectInTallContainer", test_fitWideRectInTallContainer),
        ("test_fitWideRectInSquareContainer", test_fitWideRectInSquareContainer),
        ("test_fitWideRectInWideContainer", test_fitWideRectInWideContainer),
        
        ("test_fitSquareRectInTallContainer", test_fitSquareRectInTallContainer),
        ("test_fitSquareRectInSquareContainer", test_fitSquareRectInSquareContainer),
        ("test_fitSquareRectInWideContainer", test_fitSquareRectInWideContainer),
        
        ("test_fitTallRectInTallContainer", test_fitTallRectInTallContainer),
        ("test_fitTallRectInSquareContainer", test_fitTallRectInSquareContainer),
        ("test_fitTallRectInWideContainer", test_fitTallRectInWideContainer),
        
        ("test_dimensionalScalingEdgeCases", test_dimensionalScalingEdgeCases),
        
        
        ("test_fillWideRectInTallContainer", test_fillWideRectInTallContainer),
        ("test_fillWideRectInSquareContainer", test_fillWideRectInSquareContainer),
        ("test_fillWideRectInWideContainer", test_fillWideRectInWideContainer),
        
        ("test_fillSquareRectInTallContainer", test_fillSquareRectInTallContainer),
        ("test_fillSquareRectInSquareContainer", test_fillSquareRectInSquareContainer),
        ("test_fillSquareRectInWideContainer", test_fillSquareRectInWideContainer),
        
        ("test_fillTallRectInTallContainer", test_fillTallRectInTallContainer),
        ("test_fillTallRectInSquareContainer", test_fillTallRectInSquareContainer),
        ("test_fillTallRectInWideContainer", test_fillTallRectInWideContainer),
        
        ("test_stretchWideRectInWideContainer", test_stretchWideRectInWideContainer),
        ("test_stretchWideRectInSquareContainer", test_stretchWideRectInSquareContainer),
        ("test_stretchWideRectInTallContainer", test_stretchWideRectInTallContainer),

        ("test_stretchSquareRectInWideContainer", test_stretchSquareRectInWideContainer),
        ("test_stretchSquareRectInSquareContainer", test_stretchSquareRectInSquareContainer),
        ("test_stretchSquareRectInTallContainer", test_stretchSquareRectInTallContainer),

        ("test_stretchTallRectInWideContainer", test_stretchTallRectInWideContainer),
        ("test_stretchTallRectInSquareContainer", test_stretchTallRectInSquareContainer),
        ("test_stretchTallRectInTallContainer", test_stretchTallRectInTallContainer),
    ]
}



@inline(__always)
private func testScaling(
    _ method: ScaleMethod,
    _ direction: ScaleDirection,
    _ child: CGSize,
    within parent: CGSize,
    expect: CGSize,
    aspectRatioExpectation: AspectRatioExpectation? = .sameAsOriginal,
    file: StaticString = #filePath,
    line: UInt = #line)
-> Bool {
    var allSucceeded = true
    
    let parent = CGRect(origin: .random(), size: parent)
    let child = CGRect(origin: .random(), size: child)
    
    let scaled = child.scaled(within: parent, method: method, direction: direction)
    XCTAssertEqual(scaled.width, expect.width, accuracy: .approximationTolerance, "Scaled width wasn't as expected", file: file, line: line)
    XCTAssertEqual(scaled.height, expect.height, accuracy: .approximationTolerance, "Scaled height wasn't as expected", file: file, line: line)
    allSucceeded &&= scaled.size ≈≈ expect
    
    switch aspectRatioExpectation {
    case .sameAsParent:
        XCTAssertEqual(scaled.size.aspectRatio(), parent.size.aspectRatio(), accuracy: .approximationTolerance, "Scaled aspect ratio wasn't the same as the parent's", file: file, line: line)
        allSucceeded &&= scaled.size.aspectRatio() ≈≈ parent.size.aspectRatio()
    
    case .sameAsOriginal:
        XCTAssertEqual(scaled.size.aspectRatio(), child.size.aspectRatio(), accuracy: .approximationTolerance, "Scaled aspect ratio shouldn't have changed", file: file, line: line)
        allSucceeded &&= scaled.size.aspectRatio() ≈≈ child.size.aspectRatio()
        
    case .none:
        break
    }
    
    XCTAssertEqual(scaled.midX, parent.midX, accuracy: .approximationTolerance, "Scaled center wasn't in the expected horizontal position", file: file, line: line)
    XCTAssertEqual(scaled.midY, parent.midY, accuracy: .approximationTolerance, "Scaled center wasn't in the expected vertical position", file: file, line: line)
    allSucceeded &&= scaled.center ≈≈ parent.center
    
    return allSucceeded
}



@inline(__always)
private func testScaling(
    _ method: ScaleMethod,
    _ direction: ScaleDirection,
    _ originalSize: CGSize,
    by multiplier: CGFloat,
    expect: CGSize,
    file: StaticString = #filePath,
    line: UInt = #line)
{
    let originalRect = CGRect(origin: .random(), size: originalSize)
    let scaledRect = originalRect.scaling(dimensionsBy: multiplier, direction: direction)
    XCTAssertEqual(scaledRect.width,  expect.width,      accuracy: .approximationTolerance, "Scaled rectangle width isn't as expected",    file: file, line: line)
    XCTAssertEqual(scaledRect.height, expect.height,     accuracy: .approximationTolerance, "Scaled rectangle height isn't as expected",   file: file, line: line)
    XCTAssertEqual(scaledRect.midX,   originalRect.midX, accuracy: .approximationTolerance, "Scaled rectangle center x isn't as expected", file: file, line: line)
    XCTAssertEqual(scaledRect.midY,   originalRect.midY, accuracy: .approximationTolerance, "Scaled rectangle center y isn't as expected", file: file, line: line)
}
