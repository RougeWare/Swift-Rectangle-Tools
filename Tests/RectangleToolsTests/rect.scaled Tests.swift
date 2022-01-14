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
    ]
}



@inline(__always)
private func testScaling(
    _ method: ScaleMethod,
    _ direction: ScaleDirection,
    _ child: CGSize,
    within parent: CGSize,
    expect: CGSize,
    expectAspectRatioOfParent: Bool = false)
-> Bool {
    var allSucceeded = true
    
    let parent = CGRect(origin: .random(), size: parent)
    let child = CGRect(origin: .random(), size: child)
    
    let scaled = child.scaled(within: parent, method: method, direction: direction)
    XCTAssertEqual(scaled.width, expect.width, accuracy: .approximationTolerance)
    XCTAssertEqual(scaled.height, expect.height, accuracy: .approximationTolerance)
    allSucceeded &&= scaled.size ≈≈ expect
    
    if expectAspectRatioOfParent {
        XCTAssertEqual(scaled.size.aspectRatio(), parent.size.aspectRatio(), accuracy: .approximationTolerance)
        allSucceeded &&= scaled.size.aspectRatio() ≈≈ parent.size.aspectRatio()
    }
    else {
        XCTAssertEqual(scaled.size.aspectRatio(), child.size.aspectRatio(), accuracy: .approximationTolerance)
        allSucceeded &&= scaled.size.aspectRatio() ≈≈ child.size.aspectRatio()
    }
    
    XCTAssertEqual(scaled.midX, parent.midX, accuracy: .approximationTolerance)
    XCTAssertEqual(scaled.midY, parent.midY, accuracy: .approximationTolerance)
    allSucceeded &&= scaled.center ≈≈ parent.center
    
    return allSucceeded
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
