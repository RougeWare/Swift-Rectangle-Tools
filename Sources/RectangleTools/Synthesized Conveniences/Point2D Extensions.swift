//
//  Point2D Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation

import MultiplicativeArithmetic



public extension Point2D {
    
    /// Creates a copy of the given point
    ///
    /// - Parameter other: Another point to copy
    init(_ other: Self) {
        self.init(x: other.x, y: other.y)
    }
}



public extension Point2D
where Length: MultiplicativeArithmetic,
      Length: AdditiveArithmetic,
      Length: ExpressibleByIntegerLiteral
{
    /// Measures the distance from this point to another point
    ///
    /// - Parameter other: The remote point, to which you want to know the distance from this point
    /// - Returns: An absolute distance to the other point (always greater than zero, not implying any direction)
    func distance<Other: Point2D>(to other: Other) -> Length
    where Other.Length == Self.Length
    {
        sqrt(
            (other.x - x).pow(2)
            + (other.y - y).pow(2)
        )
    }
}
