//
//  DualTwoDimensional Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-09.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



public extension DualTwoDimensional
    where
        FirstDimensionPair.Length: BinaryInteger,
        SecondDimensionPair.Length: BinaryInteger
{
    
    /// Creates a new dual 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another dual 2D object to convert
    init<Other>(_ other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryInteger,
            Other.SecondDimensionPair.Length: BinaryInteger
    {
        self.init(firstDimensionPair: .init(other.firstDimensionPair),
                  secondDimensionPair: .init(other.secondDimensionPair))
    }
    
    
    /// Creates a new dual 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another dual 2D object to convert
    init<Other>(_ other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryFloatingPoint,
            Other.SecondDimensionPair.Length: BinaryFloatingPoint
    {
        self.init(firstDimensionPair: .init(other.firstDimensionPair),
                  secondDimensionPair: .init(other.secondDimensionPair))
    }
    
    
    /// Attempts to create a new dual 2D object by converting the values of the given one. If that can't be done (e.g.
    /// the other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another dual 2D object to convert
    /// - Returns: `nil` iff the other dual 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryInteger,
            Other.SecondDimensionPair.Length: BinaryInteger
    {
        guard
            let otherFirst = FirstDimensionPair.init(exactly: other.firstDimensionPair),
            let otherSecond = SecondDimensionPair.init(exactly: other.secondDimensionPair)
            else
        {
            return nil
        }
        
        self.init(firstDimensionPair: otherFirst, secondDimensionPair: otherSecond)
    }
    
    
    /// Attempts to create a new dual 2D object by converting the values of the given one. If that can't be done (e.g.
    /// the other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another dual 2D object to convert
    /// - Returns: `nil` iff the other dual 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryFloatingPoint,
            Other.SecondDimensionPair.Length: BinaryFloatingPoint
    {
        guard
            let otherFirst = FirstDimensionPair.init(exactly: other.firstDimensionPair),
            let otherSecond = SecondDimensionPair.init(exactly: other.secondDimensionPair)
            else
        {
            return nil
        }
        
        self.init(firstDimensionPair: otherFirst, secondDimensionPair: otherSecond)
    }
}



public extension DualTwoDimensional
    where
        FirstDimensionPair.Length: BinaryFloatingPoint,
        SecondDimensionPair.Length: BinaryFloatingPoint
{
    
    /// Creates a new dual 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another dual 2D object to convert
    init<Other>(_ other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryInteger,
            Other.SecondDimensionPair.Length: BinaryInteger
    {
        self.init(firstDimensionPair: .init(other.firstDimensionPair),
                  secondDimensionPair: .init(other.secondDimensionPair))
    }
    
    
    /// Creates a new dual 2D object by converting the values of the given one
    ///
    /// - Parameter other: Another dual 2D object to convert
    init<Other>(_ other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryFloatingPoint,
            Other.SecondDimensionPair.Length: BinaryFloatingPoint
    {
        self.init(firstDimensionPair: .init(other.firstDimensionPair),
                  secondDimensionPair: .init(other.secondDimensionPair))
    }
    
    
    /// Attempts to create a new dual 2D object by converting the values of the given one. If that can't be done (e.g.
    /// the other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another dual 2D object to convert
    /// - Returns: `nil` iff the other dual 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryInteger,
            Other.SecondDimensionPair.Length: BinaryInteger
    {
        guard
            let otherFirst = FirstDimensionPair.init(exactly: other.firstDimensionPair),
            let otherSecond = SecondDimensionPair.init(exactly: other.secondDimensionPair)
            else
        {
            return nil
        }
        
        self.init(firstDimensionPair: otherFirst, secondDimensionPair: otherSecond)
    }
    
    
    /// Attempts to create a new dual 2D object by converting the values of the given one. If that can't be done (e.g.
    /// the other's bit width is larger than this one), `nil` is returned.
    ///
    /// - Parameter other: Another dual 2D object to convert
    /// - Returns: `nil` iff the other dual 2D object couldn't be exactly converted to the target type
    init?<Other>(exactly other: Other)
        where Other: DualTwoDimensional,
            Other.FirstDimensionPair.Length: BinaryFloatingPoint,
            Other.SecondDimensionPair.Length: BinaryFloatingPoint
    {
        guard
            let otherFirst = FirstDimensionPair.init(exactly: other.firstDimensionPair),
            let otherSecond = SecondDimensionPair.init(exactly: other.secondDimensionPair)
            else
        {
            return nil
        }
        
        self.init(firstDimensionPair: otherFirst, secondDimensionPair: otherSecond)
    }
}



public extension DualTwoDimensional
    where FirstDimensionPair.Length: ExpressibleByIntegerLiteral,
          SecondDimensionPair.Length: ExpressibleByIntegerLiteral
{
    
    /// An instance of this where both of the pairs' Xs and Ys are `0`
    @inlinable
    static var zero: Self { self.init(firstDimensionPair: .zero, secondDimensionPair: .zero) }
    
    /// An instance of this where both of the pairs' Xs and Ys are `1`
    @inlinable
    static var one: Self { self.init(firstDimensionPair: .one, secondDimensionPair: .one) }
}
