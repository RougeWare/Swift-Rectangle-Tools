//
//  Rectangle Extensions.swift
//  
//
//  Created by Ben Leggiero on 2019-10-21.
//

import Foundation
import MultiplicativeArithmetic



public extension Rectangle  {
    /// Conveniently returns the rectangle's size's width
    @inlinable
    var width: Length { size.width }
    
    /// Conveniently returns the rectangle's size's height
    @inlinable
    var height: Length { size.height }
    
    
    /// Conveniently returns the rectangle's origin's X coordinate
    @inlinable
    var x: Length { origin.x }
    
    /// Conveniently returns the rectangle's origin's Y coordinate
    @inlinable
    var y: Length { origin.y }
}



public extension Rectangle where Length: Comparable, Length: AdditiveArithmetic {
    
    /// The smallest X value in this rectangle
    @inlinable
    var minX: Length { min(x, x + width) }
    
    /// The smallest Y value in this rectangle
    @inlinable
    var minY: Length { min(y, y + height) }
    
    
    /// The largest X value in this rectangle
    @inlinable
    var maxX: Length { max(x, x + width) }
    
    /// The largest Y value in this rectangle
    @inlinable
    var maxY: Length { max(y, y + height) }
}



public extension Rectangle
    where Length: Comparable,
        Length: AdditiveArithmetic,
        Length: MultiplicativeArithmetic,
        Length: ExpressibleByIntegerLiteral
{
    
    /// The middlemost X value in this rectangle
    @inlinable
    var midX: Length { (minX + maxX) / 2 }
    
    /// The middlemost Y value in this rectangle
    @inlinable
    var midY: Length { (minY + maxY) / 2 }
    
    
    /// The middlemost point in this rectangle
    @inlinable
    var center: Point { Point.init(x: midX, y: midY) }
}
