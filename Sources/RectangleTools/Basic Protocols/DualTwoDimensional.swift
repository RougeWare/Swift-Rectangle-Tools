//
//  DualTwoDimensional.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



/// Something which has two key properties, each of which is `TwoDimensional`
public protocol DualTwoDimensional {
    
    /// The type of the first key `TwoDimensional` in instances of this object
    associatedtype FirstDimensionPair: TwoDimensional
    
    /// The type of the second key `TwoDimensional` in instances of this object
    associatedtype SecondDimensionPair: TwoDimensional
    
    
    
    /// The first key `TwoDimensional` in this object
    var firstDimensionPair: FirstDimensionPair { get }
    
    /// The second key `TwoDimensional` in this object
    var secondDimensionPair: SecondDimensionPair { get }
}



// MARK: - Equatable

public extension DualTwoDimensional
    where
        Self: Equatable,
        FirstDimensionPair: Equatable,
        SecondDimensionPair: Equatable
{
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.firstDimensionPair == rhs.firstDimensionPair
            && lhs.secondDimensionPair == rhs.secondDimensionPair
    }
}



// MARK: - Hashable

public extension DualTwoDimensional
    where
        Self: Hashable,
        FirstDimensionPair: Hashable,
        SecondDimensionPair: Hashable
{
    func hash(into hasher: inout Hasher) {
        hasher.combine(firstDimensionPair)
        hasher.combine(secondDimensionPair)
    }
}



// MARK: - Rectangle

public extension DualTwoDimensional where Self: Rectangle {
    var firstDimensionPair: Point { origin }
    var secondDimensionPair: Size { size }
}



// MARK: - Default conformances

extension BinaryIntegerRectangle: DualTwoDimensional {}
extension DecimalRectangle: DualTwoDimensional {}
extension CGRect: DualTwoDimensional {}
