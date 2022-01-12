//
//  size.scaled Tests.swift
//  
//
//  Created by Ky Leggiero on 2022-01-11.
//

import XCTest
import RectangleTools



final class size_scaled_Tests: XCTestCase {
    
    // MARK: - Fit wide in ___
    
    func test_fitWideRectInWideContainer() {
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .veryWide__96_12,       method: .fit, expect: .init(width: 96, height: 1.2)))
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .wide__18_12,           method: .fit, expect: .init(width: 18, height: 0.225)))
        
        XCTAssertTrue(testScaling(.veryWide__96_12, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.veryWide__96_12, within: .veryWide__96_12,       method: .fit, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.veryWide__96_12, within: .wide__18_12,           method: .fit, expect: .init(width: 18, height: 2.25)))
        
        XCTAssertTrue(testScaling(.wide__18_12, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.wide__18_12, within: .veryWide__96_12,       method: .fit, expect: .init(width: 18, height: 12)))
        XCTAssertTrue(testScaling(.wide__18_12, within: .wide__18_12,           method: .fit, expect: .init(width: 18, height: 12)))
    }
    
    
    func test_fitWideRectInSquareContainer() {
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .squareSmall__12_12, method: .fit, expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.veryWide__96_12,       within: .squareSmall__12_12, method: .fit, expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.wide__18_12,           within: .squareSmall__12_12, method: .fit, expect: .init(width: 12, height: 8)))
        
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .squareMedium__96_96, method: .fit, expect: .init(width: 96, height: 1.2)))
        XCTAssertTrue(testScaling(.veryWide__96_12,       within: .squareMedium__96_96, method: .fit, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.wide__18_12,           within: .squareMedium__96_96, method: .fit, expect: .init(width: 18, height: 12)))
        
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .squareLarge__960_960, method: .fit, expect: .init(width: 960, height: 12)))
        XCTAssertTrue(testScaling(.veryWide__96_12,       within: .squareLarge__960_960, method: .fit, expect: .init(width: 96, height: 12)))
        XCTAssertTrue(testScaling(.wide__18_12,           within: .squareLarge__960_960, method: .fit, expect: .init(width: 18, height: 12)))
    }
    
    
    func test_fitWideRectInTallContainer() {
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 0.15)))
        XCTAssertTrue(testScaling(.extremelyWide__960_12, within: .tall__12_18,           method: .fit, expect: .init(width: 12, height: 0.15)))
        
        XCTAssertTrue(testScaling(.veryWide__96_12, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.veryWide__96_12, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 1.5)))
        XCTAssertTrue(testScaling(.veryWide__96_12, within: .tall__12_18,           method: .fit, expect: .init(width: 12, height: 1.5)))
        
        XCTAssertTrue(testScaling(.wide__18_12, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 8)))
        XCTAssertTrue(testScaling(.wide__18_12, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 8)))
        XCTAssertTrue(testScaling(.wide__18_12, within: .tall__12_18,           method: .fit, expect: .init(width: 12, height: 8)))
    }
    
    
    // MARK: - Fit square in ___
    
    func test_fitSquareRectInWideContainer() {
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .veryWide__96_12,       method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .wide__18_12,           method: .fit, expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .veryWide__96_12,       method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .wide__18_12,           method: .fit, expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .veryWide__96_12,       method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .wide__18_12,           method: .fit, expect: .init(width: 12, height: 12)))
    }
    
    
    func test_fitSquareRectInSquareContainer() {
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .squareSmall__12_12, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .squareMedium__96_96, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .squareLarge__960_960, method: .fit, expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .squareSmall__12_12, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .squareMedium__96_96, method: .fit, expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .squareLarge__960_960, method: .fit, expect: .init(width: 96, height: 96)))
        
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .squareSmall__12_12, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .squareMedium__96_96, method: .fit, expect: .init(width: 96, height: 96)))
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .squareLarge__960_960, method: .fit, expect: .init(width: 960, height: 960)))
    }
    
    
    func test_fitSquareRectInTallContainer() {
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareSmall__12_12, within: .tall__12_18,           method: .fit, expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareMedium__96_96, within: .tall__12_18,           method: .fit, expect: .init(width: 12, height: 12)))
        
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 12)))
        XCTAssertTrue(testScaling(.squareLarge__960_960, within: .tall__12_18,           method: .fit, expect: .init(width: 12, height: 12)))
    }
    
    
    // MARK: - Fit tall in ___
    
    func test_fitTallRectInWideContainer() {
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .veryWide__96_12,       method: .fit, expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .wide__18_12,           method: .fit, expect: .init(width: 0.15, height: 12)))
        
        XCTAssertTrue(testScaling(.veryTall__12_96, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.veryTall__12_96, within: .veryWide__96_12,       method: .fit, expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.veryTall__12_96, within: .wide__18_12,           method: .fit, expect: .init(width: 1.5, height: 12)))
        
        XCTAssertTrue(testScaling(.tall__12_18, within: .extremelyWide__960_12, method: .fit, expect: .init(width: 8, height: 12)))
        XCTAssertTrue(testScaling(.tall__12_18, within: .veryWide__96_12,       method: .fit, expect: .init(width: 8, height: 12)))
        XCTAssertTrue(testScaling(.tall__12_18, within: .wide__18_12,           method: .fit, expect: .init(width: 8, height: 12)))
    }
    
    
    func test_fitTallRectInSquareContainer() {
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .squareSmall__12_12, method: .fit, expect: .init(width: 0.15, height: 12)))
        XCTAssertTrue(testScaling(.veryTall__12_96,       within: .squareSmall__12_12, method: .fit, expect: .init(width: 1.5, height: 12)))
        XCTAssertTrue(testScaling(.tall__12_18,           within: .squareSmall__12_12, method: .fit, expect: .init(width: 8, height: 12)))
        
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .squareMedium__96_96, method: .fit, expect: .init(width: 1.2, height: 96)))
        XCTAssertTrue(testScaling(.veryTall__12_96,       within: .squareMedium__96_96, method: .fit, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.tall__12_18,           within: .squareMedium__96_96, method: .fit, expect: .init(width: 12, height: 18)))
        
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .squareLarge__960_960, method: .fit, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.veryTall__12_96,       within: .squareLarge__960_960, method: .fit, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.tall__12_18,           within: .squareLarge__960_960, method: .fit, expect: .init(width: 12, height: 18)))
    }
    
    
    func test_fitTallRectInTallContainer() {
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 960)))
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .veryTall__12_96,       method: .fit, expect: .init(width: 1.2, height: 96)))
        XCTAssertTrue(testScaling(.extremelyTall__12_960, within: .tall__12_18,           method: .fit, expect: .init(width: 0.225, height: 18)))
        
        XCTAssertTrue(testScaling(.veryTall__12_96, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.veryTall__12_96, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 96)))
        XCTAssertTrue(testScaling(.veryTall__12_96, within: .tall__12_18,           method: .fit, expect: .init(width: 2.25, height: 18)))
        
        XCTAssertTrue(testScaling(.tall__12_18, within: .extremelyTall__12_960, method: .fit, expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.tall__12_18, within: .veryTall__12_96,       method: .fit, expect: .init(width: 12, height: 18)))
        XCTAssertTrue(testScaling(.tall__12_18, within: .tall__12_18,           method: .fit, expect: .init(width: 12, height: 18)))
    }
    
    
    static let allTests = [
        ("test_fitWideRectInTallContainer", test_fitWideRectInTallContainer),
        ("test_fitWideRectInSquareContainer", test_fitWideRectInSquareContainer),
        ("test_fitWideRectInWideContainer", test_fitWideRectInWideContainer),
    ]
}



@inline(__always)
private func testScaling(
    _ child: CGSize,
    within parent: CGSize,
    method: ScaleMethod,
    expect: CGSize,
    expectAspectRatioOfParent: Bool = false)
-> Bool {
    var allSucceeded = true
    
    let scaled = child.scaled(within: parent, method: method)
    XCTAssertEqual(scaled.width, expect.width, accuracy: .approximationTolerance)
    XCTAssertEqual(scaled.height, expect.height, accuracy: .approximationTolerance)
    allSucceeded &&= scaled ≈≈ expect
    
    if expectAspectRatioOfParent {
        XCTAssertEqual(scaled.aspectRatio(), parent.aspectRatio(), accuracy: .approximationTolerance)
        allSucceeded &&= scaled.aspectRatio() ≈≈ parent.aspectRatio()
    }
    else {
        XCTAssertEqual(scaled.aspectRatio(), child.aspectRatio(), accuracy: .approximationTolerance)
        allSucceeded &&= scaled.aspectRatio() ≈≈ child.aspectRatio()
    }
    
    return allSucceeded
}
