//
//  Test.swift
//  RectangleTools
//
//  Created by Ky on 2026-02-03.
//

#if canImport(CoreGraphics)
import CoreGraphics
#endif
import Testing

import RectangleTools



struct Size_initialization_tests {
    
    @Test
    func init_square() async throws {
        squareTest(sizeGenerator: CGSize.init(square:))
    }
    
    
    @Test
    func static_square() async throws {
        squareTest(sizeGenerator: CGSize.square(_:))
    }
}



private func squareTest(sourceLocation: SourceLocation = #_sourceLocation, sizeGenerator: (_ sideLength: CGFloat) -> CGSize) {
    for i in 1...1000 {
        let range = CGFloat(i) * .random(in: 0...10)
        let sideLength = CGFloat.random(in: -range...range)
        let size = sizeGenerator(sideLength)
        #expect(size.width == sideLength, "A square with side length \(sideLength) should have width \(sideLength)", sourceLocation: sourceLocation)
        #expect(size.height == sideLength, "A square with side length \(sideLength) should have height \(sideLength)", sourceLocation: sourceLocation)
        #expect(size.minMeasurement == size.maxMeasurement, "All sides of a square should be equal", sourceLocation: sourceLocation)
    }
}
