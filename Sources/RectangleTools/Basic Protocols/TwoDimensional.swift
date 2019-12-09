//
//  TwoDimensional.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



/// Something which can be measured using only two dimensions
public protocol TwoDimensional {
    
    associatedtype Length
    
    
    
    /// The measurement in the first dimension (along the X axis)
    var measurementX: Length { get }
    
    /// The measurement in the second dimension (along the Y axis)
    var measurementY: Length { get }
    
    
    /// Creates a new 2D object with the given X and Y measurements
    ///
    /// - Parameters:
    ///   - measurementX: The measurement in the first dimension
    ///   - measurementY: The measurement in the second dimension
    init(measurementX: Length, measurementY: Length)
}



/// A mutable form of `TwoDimensional`
public protocol MutableTwoDimensional: TwoDimensional {
    var measurementX: Length { get set }
    var measurementY: Length { get set }
}



// MARK: - Equatable

public extension TwoDimensional
    where
        Self: Equatable,
        Length: Equatable
{
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.measurementX == rhs.measurementX
            && lhs.measurementY == rhs.measurementY
    }
}



// MARK: - Hashable

public extension TwoDimensional
    where
        Self: Hashable,
        Length: Hashable
{
    func hash(into hasher: inout Hasher) {
        hasher.combine(measurementX)
        hasher.combine(measurementY)
    }
}
