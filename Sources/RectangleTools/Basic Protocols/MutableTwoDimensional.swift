//
//  TwoDimensional.swift
//  
//
//  Created by Ben Leggiero on 2019-10-21.
//

import Foundation



/// Something which can be measured using two dimensions
public protocol TwoDimensional {
    
    associatedtype Length
    
    
    
    /// The measurement in the first dimension (along the X axis)
    var measurementX: Length { get }
    
    /// The measurement in the second dimension (along the Y axis)
    var measurementY: Length { get }
}



/// A mutable form of `TwoDimensional`
public protocol MutableTwoDimensional: TwoDimensional {
    var measurementX: Length { get set }
    var measurementY: Length { get set }
}
