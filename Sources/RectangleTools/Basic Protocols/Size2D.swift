//
//  Size2D.swift
//  
//
//  Created by Ben Leggiero on 2019-10-21.
//

import Foundation



/// A size in two dimensions
public protocol Size2D: TwoDimensional {
    
    /// The unit in which the size is defined
    associatedtype Length
    
    
    
    /// The length of the size along the X axis
    var width: Length { get }
    
    /// The length of the size along the Y axis
    var height: Length { get }
}



/// A two-dimensional size which can bemutated
public protocol MutableSize2D: Size2D, MutableTwoDimensional {
    var width: Length { get set }
    var height: Length { get set }
}



// MARK: - Synthesis

public extension Size2D {
    
    var measurementX: Length {
        get { width }
    }
    
    
    var measurementY: Length {
        get { height }
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
