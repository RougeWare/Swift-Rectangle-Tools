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
        
        
        testScaling(.fit,.down,  .wide__18_12, by: 0.4, expect: .init(width: 7.2, height: 4.8))
        testScaling(.fit,.down,  .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fit,.down,  .wide__18_12, by: 3,   expect: .init(width: 18, height: 12))
        
        testScaling(.fit,.upOrDown,  .wide__18_12, by: 0.4, expect: .init(width: 7.2, height: 4.8))
        testScaling(.fit,.upOrDown,  .wide__18_12, by: 1,   expect: .init(width: 18, height: 12))
        testScaling(.fit,.upOrDown,  .wide__18_12, by: 3,   expect: .init(width: 54, height: 36))
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
    }
    
    
    // MARK: - Stretch
    
    
    
    // MARK: Stretch wide in ___
    
    func test_stretchWideRectInWideContainer() {
        // When stretching, the child should match the parent exactly regardless of aspect ratio, centered.
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .extremelyWide__960_12, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .extremelyWide__960_12, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .veryWide__96_12, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
    }
    
    
    func test_stretchWideRectInSquareContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .squareMedium__96_96, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .squareMedium__96_96, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .squareMedium__96_96, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .squareLarge__960_960, expect: .extremelyWide__960_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .squareLarge__960_960, expect: .veryWide__96_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .squareLarge__960_960, expect: .wide__18_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
    }
    
    
    func test_stretchWideRectInTallContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .extremelyTall__12_960, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .extremelyTall__12_960, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyWide__960_12, within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryWide__96_12,       within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .wide__18_12,           within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyWide__960_12, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryWide__96_12,       within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .wide__18_12,           within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
    }
    
    
    // MARK: Stretch square in ___
    
    func test_stretchSquareRectInWideContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .extremelyWide__960_12, expect: .squareSmall__12_12,    aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .extremelyWide__960_12, expect: .veryWide__96_12,       aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .veryWide__96_12, expect: .veryWide__96_12,    aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .veryWide__96_12, expect: .veryWide__96_12,    aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .wide__18_12, expect: .wide__18_12,        aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .wide__18_12, expect: .wide__18_12,        aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
    }
    
    
    func test_stretchSquareRectInSquareContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .squareMedium__96_96, expect: .squareSmall__12_12,  aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .squareLarge__960_960, expect: .squareSmall__12_12,   aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .squareLarge__960_960, expect: .squareMedium__96_96,  aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
    }
    
    
    func test_stretchSquareRectInTallContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .extremelyTall__12_960, expect: .squareSmall__12_12,    aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .extremelyTall__12_960, expect: .veryTall__12_96,       aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .veryTall__12_96, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .squareSmall__12_12,   within: .tall__12_18, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareMedium__96_96,  within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .squareLarge__960_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareSmall__12_12,   within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareMedium__96_96,  within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .squareLarge__960_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
    }
    
    
    // MARK: Stretch tall in ___
    
    func test_stretchTallRectInWideContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .extremelyWide__960_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .extremelyWide__960_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .veryWide__96_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .wide__18_12, expect: .squareSmall__12_12, aspectRatioExpectation: .none))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .extremelyWide__960_12, expect: .extremelyWide__960_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .veryWide__96_12, expect: .veryWide__96_12, aspectRatioExpectation: .sameAsParent))
        
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .wide__18_12, expect: .wide__18_12, aspectRatioExpectation: .sameAsParent))
    }

    func test_stretchTallRectInSquareContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .squareMedium__96_96, expect: .veryTall__12_96, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .squareMedium__96_96, expect: .veryTall__12_96, aspectRatioExpectation: .none))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .squareMedium__96_96, expect: .tall__12_18,     aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .squareLarge__960_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .squareLarge__960_960, expect: .veryTall__12_96,       aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .squareLarge__960_960, expect: .tall__12_18,           aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .squareSmall__12_12, expect: .squareSmall__12_12, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .squareMedium__96_96, expect: .squareMedium__96_96, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .squareLarge__960_960, expect: .squareLarge__960_960, aspectRatioExpectation: .sameAsParent))
    }

    func test_stretchTallRectInTallContainer() {
        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .extremelyTall__12_960, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsOriginal))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .extremelyTall__12_960, expect: .tall__12_18, aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .veryTall__12_96, expect: .tall__12_18, aspectRatioExpectation: .sameAsOriginal))

        XCTAssertTrue(testScaling(.stretch, .down,     .extremelyTall__12_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .veryTall__12_96,       within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .down,     .tall__12_18,           within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .extremelyTall__12_960, expect: .extremelyTall__12_960, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .veryTall__12_96, expect: .veryTall__12_96, aspectRatioExpectation: .sameAsParent))

        XCTAssertTrue(testScaling(.stretch, .upOrDown, .extremelyTall__12_960, within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .veryTall__12_96,       within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
        XCTAssertTrue(testScaling(.stretch, .upOrDown, .tall__12_18,           within: .tall__12_18, expect: .tall__12_18, aspectRatioExpectation: .sameAsParent))
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
    let scaledRect = originalRect.scalingEdges(by: multiplier, direction: direction)
    XCTAssertEqual(scaledRect.width,  expect.width,      accuracy: .approximationTolerance, "Scaled rectangle width isn't as expected",    file: file, line: line)
    XCTAssertEqual(scaledRect.height, expect.height,     accuracy: .approximationTolerance, "Scaled rectangle height isn't as expected",   file: file, line: line)
    XCTAssertEqual(scaledRect.midX,   originalRect.midX, accuracy: .approximationTolerance, "Scaled rectangle center x isn't as expected", file: file, line: line)
    XCTAssertEqual(scaledRect.midY,   originalRect.midY, accuracy: .approximationTolerance, "Scaled rectangle center y isn't as expected", file: file, line: line)
    
    let scaledSize = originalSize.scalingEdges(by: multiplier, direction: direction)
    XCTAssertEqual(scaledSize.width,  expect.width,      accuracy: .approximationTolerance, "Scaled size width isn't as expected",    file: file, line: line)
    XCTAssertEqual(scaledSize.height, expect.height,     accuracy: .approximationTolerance, "Scaled size height isn't as expected",   file: file, line: line)
}



private extension CGFloat {
    static func random() -> Self {
        random(in: -1024...1024)
    }
}



private extension CGPoint {
    static func random() -> Self {
        .init(x: .random(), y: .random())
    }
}



private enum AspectRatioExpectation {
    case sameAsOriginal
    case sameAsParent
}
