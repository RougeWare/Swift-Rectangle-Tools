//
//  rect.scaled Tests.swift
//  
//
//  Created by Ky Leggiero on 2022-01-11.
//

import XCTest
import RectangleTools



final class rect_scaled_Tests: XCTestCase {
    
    func test_fitWideImageInTallContainer() {
        
        // XW in XT
//        XCTAssertEqual(CGRect(width: 960, height: 12).scaled(within: CGRect(x: 0, y: 0, width: 12, height: 960), method: .fit),
//                       CGRect(width: 12, height: 1))
    }
    
    
    static let allTests = [
        ("test_fitWideImageInTallContainer", test_fitWideImageInTallContainer),
        ("test_fitWideImageInTallContainer", test_fitWideImageInTallContainer),
    ]
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



private extension CGRect {
    init(size: CGSize) {
        self.init(origin: .random(), size: size)
    }
    
    
    init(width: CGFloat, height: CGFloat) {
        self.init(size: CGSize(width: width, height: height))
    }
}
