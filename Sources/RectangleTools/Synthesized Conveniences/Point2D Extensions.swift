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
    where Length: BinaryFloatingPoint
{
    /// Creates a new point with the given values from a different type
    ///
    /// - Parameters:
    ///   - x: The X coordinate to convert
    ///   - y: The Y coordinate to convert
    @inline(__always)
    init<OtherLength>(x: OtherLength, y: OtherLength)
        where OtherLength: BinaryFloatingPoint
    {
        self.init(measurementX: x,
                  measurementY: y)
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



// MARK: - Moving the point

public extension Point2D
where Length: AdditiveArithmetic
{
    /// Creates a new point which is offset from this one by the given amounts in each dimension
    ///
    /// - Parameters:
    ///   - dx: The amount by which to move the new point along the X axis, relative to this point (e.g. `-2` decreases the X value of the point by 2)
    ///   - dy: The amount by which to move the new point along the Y axis, relative to this point (e.g. `3` increases the Y value of the point by 3)
    func offset(dx: Length, dy: Length) -> Self {
        Self(x: x + dx, y: y + dy)
    }
    
    
    /// Creates a new point which is offset from this one by the given amounts in each dimension
    ///
    /// - Parameters:
    ///   - offset: The amount by which to move the new point along the X and Y axes, relative to this point (e.g. `(x: -2, y: 3)` decreases the X value of the returned point by 2 and increases the Y value by 3)
    func offset<Other>(by offset: Other) -> Self
    where Other: TwoDimensional, Other.Length == Self.Length
    {
        self.offset(dx: offset.measurementX, dy: offset.measurementY)
    }
    
    
    /// Creates a new point which is offset from the left one by the given amounts of the right one in each dimension
    ///
    /// - Parameters:
    ///   - lhs: The initial origin point
    ///   - rhs: The amount by which to move the resulting point along the X and Y axes, relative to the origin point `lhs` (e.g. `(x: -2, y: 3)` decreases the X value of the returned point by 2 and increases the Y value by 3)
    static func + (lhs: Self, rhs: Self) -> Self {
        lhs.offset(by: rhs)
    }
}
