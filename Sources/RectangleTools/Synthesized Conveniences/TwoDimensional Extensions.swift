//
//  TwoDimensional Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation
import MultiplicativeArithmetic



public extension TwoDimensional where Length: BinaryFloatingPoint {
    
    /// Creates a new 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another 2D object to convert
    init<Other>(_ other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryInteger
    {
        self.init(measurementX: Length.init(other.measurementX), measurementY: Length.init(other.measurementY))
    }
    
    
    /// Creates a new 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another 2D object to convert
    init<Other>(_ other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryFloatingPoint
    {
        self.init(measurementX: Length.init(other.measurementX), measurementY: Length.init(other.measurementY))
    }
    
    
    /// Attempts to create a new 2D object by converting the values of the given one. If that can't be done (e.g. the
    /// other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another 2D object to convert
    /// - Returns: `nil` iff the other 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryInteger
    {
        guard
            let otherX = Length.init(exactly: other.measurementX),
            let otherY = Length.init(exactly: other.measurementY)
            else
        {
            return nil
        }
        
        self.init(measurementX: otherX, measurementY: otherY)
    }
    
    
    /// Attempts to create a new 2D object by converting the values of the given one. If that can't be done (e.g. the
    /// other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another 2D object to convert
    /// - Returns: `nil` iff the other 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryFloatingPoint
    {
        guard
            let otherX = Length.init(exactly: other.measurementX),
            let otherY = Length.init(exactly: other.measurementY)
            else
        {
            return nil
        }
        
        self.init(measurementX: otherX, measurementY: otherY)
    }
    
    
    /// The ratio of the X dimension to the Y dimension
    func aspectRatio() -> CGFloat { // TODO: Test
        return CGFloat(measurementX) / CGFloat.init(measurementY)
    }
}



public extension TwoDimensional where Length: BinaryInteger {
    
    /// Creates a new 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another 2D object to convert
    init<Other>(_ other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryInteger
    {
        self.init(measurementX: .init(other.measurementX), measurementY: .init(other.measurementY))
    }
    
    
    /// Creates a new 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another 2D object to convert
    init<Other>(_ other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryFloatingPoint
    {
        self.init(measurementX: Length.init(other.measurementX), measurementY: Length.init(other.measurementY))
    }
    
    
    /// Attempts to create a new 2D object by converting the values of the given one. If that can't be done (e.g. the
    /// other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another 2D object to convert
    /// - Returns: `nil` iff the other 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryInteger
    {
        guard
            let otherX = Length.init(exactly: other.measurementX),
            let otherY = Length.init(exactly: other.measurementY)
            else
        {
            return nil
        }
        
        self.init(measurementX: otherX, measurementY: otherY)
    }
    
    
    /// Attempts to create a new 2D object by converting the values of the given one. If that can't be done (e.g. the
    /// other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another 2D object to convert
    /// - Returns: `nil` iff the other 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: TwoDimensional,
            Other.Length: BinaryFloatingPoint
    {
        guard
            let otherX = Length.init(exactly: other.measurementX),
            let otherY = Length.init(exactly: other.measurementY)
            else
        {
            return nil
        }
        
        self.init(measurementX: otherX, measurementY: otherY)
    }
    
    
    /// The ratio of the X dimension to the Y dimension
    func aspectRatio() -> CGFloat { // TODO: Test
        return CGFloat(measurementX) / CGFloat.init(measurementY)
    }
}



public extension TwoDimensional where Length: ExpressibleByIntegerLiteral {
    
    /// An instance of this where both X and Y are `0`
    @inlinable
    static var zero: Self { self.init(measurementX: 0, measurementY: 0) }
    
    /// An instance of this where both X and Y are `1`
    @inlinable
    static var one: Self { self.init(measurementX: 1, measurementY: 1) }
}



public extension TwoDimensional where Length: ExpressibleByIntegerLiteral, Length: Comparable {
    /// Guarantees that what is returned has both measurements greater than zero
    ///
    /// If both of the dimensions are greater than zero, this returns an unchanged copy. Else, this returns a copy
    /// where either/both dimensions which are less than or equal to zero are replaced with `1`.
    var greaterThanZero: Self { // TODO: Test
        Self.init(measurementX: max(1, measurementX),
                  measurementY: max(1, measurementY))
    }
}



public extension TwoDimensional where Length: Comparable {
    /// Returns the minimum of the two measurements
    @inlinable
    var minMeasurement: Length { // TODO: Test
        return min(measurementX, measurementY)
    }
    
    
    /// Returns the maximum of the two measurements
    @inlinable
    var maxMeasurement: Length { // TODO: Test
        return max(measurementX, measurementY)
    }
}



public extension TwoDimensional where Length: MultiplicativeArithmetic {
    
    /// Returns the product of multiplying both measurements
    var product: Length { // TODO: Test
        return measurementX * measurementY
    }
}
