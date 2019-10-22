//
//  Point2D.swift
//
//
//  Created by Ben Leggiero on 2019-10-21.
//

import Foundation



/// A point in two dimensions
public protocol Point2D: TwoDimensional {
    
    /// The unit in which the point is defined
    associatedtype Length
    
    
    
    /// The location of the point along the X axis
    var x: Length { get }
    
    /// The location of the point along the Y axis
    var y: Length { get }
    
    
    /// Creates a new point with the given X and Y coordinates
    ///
    /// - Parameters:
    ///   - x: The X coordinate of the new point
    ///   - y: The Y coordinate of the new point   
    init(x: Length, y: Length)
}



/// A two-dimensional point which can bemutated
public protocol MutablePoint2D: Point2D, MutableTwoDimensional {
    var x: Length { get set }
    var y: Length { get set }
}



// MARK: - Synthesis

public extension Point2D {
    
    var measurementX: Length {
        get { x }
    }
    
    
    var measurementY: Length {
        get { y }
    }
}



public extension MutablePoint2D {
    
    var measurementX: Length {
        get { x }
        set { x = newValue }
    }
    
    
    var measurementY: Length {
        get { y }
        set { y = newValue }
    }
}
