//
//  TwoDimensional Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



public extension TwoDimensional where Length: BinaryFloatingPoint {
    
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
}
