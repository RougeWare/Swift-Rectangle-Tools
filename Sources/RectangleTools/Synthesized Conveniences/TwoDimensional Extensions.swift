//
//  TwoDimensional Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation
import CoreGraphics
import MultiplicativeArithmetic



public extension TwoDimensional where Length: BinaryFloatingPoint {
    
    /// Creates a new 2D with the given values from a different type
    ///
    /// - Parameters:
    ///   - measurementX: The X measurement to convert
    ///   - measurementY: The Y measurement to convert
    init<OtherLength>(measurementX: OtherLength, measurementY: OtherLength)
        where OtherLength: BinaryFloatingPoint
    {
        self.init(measurementX: .init(measurementX),
                  measurementY: .init(measurementY))
    }
    
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
    func aspectRatio() -> CGFloat
        where Self.Length: MultiplicativeArithmetic
    {
        CGFloat(aspectRatioDoingGenericMathWithLengthType())
    }
}



public extension TwoDimensional where Length == Decimal {
    
    /// The ratio of the X dimension to the Y dimension
    func aspectRatio() -> Decimal {
        abs(measurementX / measurementY)
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
    func aspectRatio() -> CGFloat
        where Length: MultiplicativeArithmetic
    {
        CGFloat(aspectRatioDoingGenericMathWithLengthType())
    }
}



public extension TwoDimensional
where Length: MultiplicativeArithmetic,
      Length: AdditiveArithmetic,
      Length: Comparable,
      Length: ExpressibleByIntegerLiteral {
    
    /// The ratio of the X dimension to the Y dimension. Wider objects result in a greater value. Square objects result in `1`
    ///
    /// This specialization function is necessary because aspect ratios less than 1 cannot be represented by integers
    private func aspectRatioDoingGenericMathWithLengthType() -> CGFloat
        where Length: BinaryInteger
    {
        let raw = CGFloat(measurementX) / CGFloat(measurementY)
        return raw < 0
            ? 0 - raw
            : raw
    }
    
    /// The ratio of the X dimension to the Y dimension. Wider objects result in a greater value. Square objects result in `1`
    private func aspectRatioDoingGenericMathWithLengthType() -> Length {
        let raw = measurementX / measurementY
        return raw < 0
            ? 0 - raw
            : raw
    }
    
    
    /// The ratio of the X dimension to the Y dimension. Wider objects result in a greater value. Square objects result in `1`
    func aspectRatio() -> Length { aspectRatioDoingGenericMathWithLengthType() }
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
    var greaterThanZero: Self {
        Self.init(measurementX: max(1, measurementX),
                  measurementY: max(1, measurementY))
    }
}



public extension TwoDimensional where Length: Comparable {
    /// Returns the minimum of the two measurements
    @inlinable
    var minMeasurement: Length { min(measurementX, measurementY) }
    
    
    /// Returns the maximum of the two measurements
    @inlinable
    var maxMeasurement: Length { max(measurementX, measurementY) }
}



public extension TwoDimensional where Length: MultiplicativeArithmetic {
    
    /// Returns the product of multiplying both measurements
    var product: Length { measurementX * measurementY }
}



public extension TwoDimensional where Length: SignedNumeric {
    
    /// Negates both the X and Y measurements
    ///
    /// ```swift
    /// let point = UIntPoint(3, -4)
    /// print(-point) // (-3, 4)
    /// ```
    static prefix func -(_ lhs: Self) -> Self {
        Self.init(measurementX: -lhs.measurementX,
                  measurementY: -lhs.measurementY)
    }
}



// MARK: - Operators

public extension TwoDimensional where Length: AdditiveArithmetic {
    /// Add the given scalar value to both dimensions of the 2D value
    ///
    /// ```
    /// 11 + CGPoint(x: 7, y: 12)  ==   CGPoint(x: 18, y: 23)
    /// ```
    ///
    /// - Parameters:
    ///   - augend: This will be added to both dimensions of `addend`
    ///   - addend: The dimensions here will have `augend` added to each
    static func + (augend: Length, addend: Self) -> Self {
        .init(
            measurementX: augend + addend.measurementX,
            measurementY: augend + addend.measurementY
        )
    }
    
    
    /// Add the given scalar value to both dimensions of the 2D value
    ///
    /// ```
    /// CGPoint(x: 7, y: 12) + 11  ==   CGPoint(x: 18, y: 23)
    /// ```
    ///
    /// - Parameters:
    ///   - augend: The dimensions here will have `augend` added to each
    ///   - addend: This will be added to both dimensions of `addend`
    static func + (augend: Self, addend: Length) -> Self {
        addend + augend
    }
    
    
    /// Subtracts both dimensions of the 2D value from the given scalar value and returns the result as that same 2D type
    ///
    /// ```
    /// 11 - CGPoint(x: 7, y: 12)  ==   CGPoint(x: 4, y: -1)
    /// ```
    ///
    /// - Parameters:
    ///   - minuend: This will have each dimension of `subtrahend` subtracted from it
    ///   - subtrahend: Each dimension of this will be subtracted from `minuend`
    static func - (minuend: Length, subtrahend: Self) -> Self {
        .init(
            measurementX: minuend - subtrahend.measurementX,
            measurementY: minuend - subtrahend.measurementY
        )
    }
    
    
    /// Subtracts the given scalar value from both dimensions of the 2D value and returns the result as that same 2D type
    ///
    /// ```
    /// CGPoint(x: 7, y: 12) - 11  ==   CGPoint(x: -4, y: 1)
    /// ```
    ///
    /// - Parameters:
    ///   - minuend: Each dimension of this will be subtracted from `minuend`
    ///   - subtrahend: This will have `minuend` subtracted from each dimension of it
    static func - (minuend: Self, subtrahend: Length) -> Self {
        .init(
            measurementX: minuend.measurementX - subtrahend,
            measurementY: minuend.measurementY - subtrahend
        )
    }
}



public extension TwoDimensional where Length: MultiplicativeArithmetic {
    
    /// Multiplies the given scalar value by both dimensions of the 2D value
    ///
    /// ```
    /// 2 * CGPoint(x: 7, y: 12)   ==   CGPoint(x: 14, y: 24)
    /// ```
    ///
    /// - Parameters:
    ///   - multiplier: This will be multiplied by both dimensions of `multiplicand`
    ///   - multiplicand: The dimensions here will have `multiplier` multiplied by each
    static func * (multiplier: Length, multiplicand: Self) -> Self {
        .init(
            measurementX: multiplier * multiplicand.measurementX,
            measurementY: multiplier * multiplicand.measurementY
        )
    }
    
    /// Multiplies both dimensions of the given 2D value by the scalar value
    ///
    /// ```
    /// CGPoint(x: 7, y: 12) * 2   ==   CGPoint(x: 14, y: 24)
    /// ```
    ///
    /// - Parameters:
    ///   - multiplier: The dimensions here will have `multiplier` multiplied by each
    ///   - multiplicand: This will be multiplied by both dimensions of `multiplicand`
    static func * (multiplier: Self, multiplicand: Length) -> Self {
        multiplicand * multiplier
    }
    
    
    /// Divides the given scalar value by both dimensions of the 2D value and returns the result as that same 2D type
    ///
    /// ```
    /// 2 / CGPoint(x: 7, y: 12)  ==   CGPoint(x: 2/7, y: 0.125)
    /// ```
    ///
    /// - Parameters:
    ///   - numerator: This be divided by each dimension of `denominator`
    ///   - denominator: Each dimension of this will be divided into `numerator`
//    CGPoint(x: 7, y: 12) / 2   ==   CGPoint(x: 3.5 y: 6)
    static func / (numerator: Length, denominator: Self) -> Self {
        .init(
            measurementX: numerator / denominator.measurementX,
            measurementY: numerator / denominator.measurementY
        )
    }
    
    
    /// Divides both dimensions of the given 2D value by the scalar value and returns the result as that same 2D type
    ///
    /// ```
    /// CGPoint(x: 7, y: 12) / 2  ==   CGPoint(x: 3.5 y: 6)
    /// ```
    ///
    /// - Parameters:
    ///   - numerator: Each dimension of this be divided by `denominator`
    ///   - denominator: This will be divided into each dimension of `numerator`
    static func / (numerator: Self, denominator: Length) -> Self {
        .init(
            measurementX: numerator.measurementX / denominator,
            measurementY: numerator.measurementY / denominator
        )
    }
}
