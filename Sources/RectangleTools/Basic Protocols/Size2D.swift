//
//  Size2D.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



/// A size in two dimensions
public protocol Size2D: TwoDimensional, CartesianMeasurable {
    
    /// The unit in which the size is defined
    associatedtype Length
    
    
    
    /// The length of the size along the X axis
    var width: Length { get }
    
    /// The length of the size along the Y axis
    var height: Length { get }
    
    
    /// Creates a new size with the given width and height
    ///
    /// - Parameters:
    ///   - width:  The width of the new size
    ///   - height: The height of the new size
    init(width: Length, height: Length)
}



/// A two-dimensional size which can be mutated
public protocol MutableSize2D: Size2D, MutableTwoDimensional {
    var width: Length { get set }
    var height: Length { get set }
}



// MARK: - Synthesis

// MARK: General

public extension Size2D {
    
    var measurementX: Length {
        get { width }
    }
    
    
    var measurementY: Length {
        get { height }
    }
    
    
    init(measurementX: Length, measurementY: Length) {
        self.init(width: measurementX, height: measurementY)
    }
}



public extension MutableSize2D {
    
    var measurementX: Length {
        get { width }
        set { width = newValue }
    }
    
    
    var measurementY: Length {
        get { height }
        set { height = newValue }
    }
}
