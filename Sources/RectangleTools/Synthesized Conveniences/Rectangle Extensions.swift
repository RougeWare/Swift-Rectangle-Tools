//
//  Rectangle Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
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
    
    
    /// Creates a rectangle with the given origin and size
    ///
    /// - Parameters:
    ///   - x:      The X coordinate of the origin
    ///   - y:      The Y coordinate of the origin
    ///   - width:  The width of the rectangle
    ///   - height: The height of the rectangle
    init(x: Length, y: Length, width: Length, height: Length) {
        self.init(origin: Point.init(x: x, y: y), size: Size.init(width: width, height: height))
    }
}



public extension Rectangle where Length: Comparable, Length: AdditiveArithmetic {
    
    // MARK: Lines
    
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
    
    
    // MARK: Points
    
    /// The point with the smallest X and Y values in this rectangle
    @inlinable
    var minXminY: Point { Point.init(x: minX, y: minY) }
    
    /// The point with the smallest X and largest Y values in this rectangle
    @inlinable
    var minXmaxY: Point { Point.init(x: minX, y: maxY) }
    
    /// The point with the largest X and smallest Y values in this rectangle
    @inlinable
    var maxXminY: Point { Point.init(x: maxX, y: minY) }
    
    /// The point with the largest X and Y values in this rectangle
    @inlinable
    var maxXmaxY: Point { Point.init(x: maxX, y: maxY) }
    
}



public extension Rectangle
    where Length: Comparable,
        Length: AdditiveArithmetic,
        Length: MultiplicativeArithmetic,
        Length: ExpressibleByIntegerLiteral
{
    // MARK: Line
    
    /// The middlemost X value in this rectangle
    @inlinable
    var midX: Length { (minX + maxX) / 2 }
    
    /// The middlemost Y value in this rectangle
    @inlinable
    var midY: Length { (minY + maxY) / 2 }
    
    
    /// The middlemost point in this rectangle
    @inline(__always)
    var center: Point { midXmidY }
    
    
    // MARK: Points
    
    /// The middle of the low horizontal edge on this rectangle
    @inlinable
    var midXminY: Point { Point.init(x: midX, y: minY) }
    
    /// The middlemost point in this rectangle
    @inlinable
    var midXmidY: Point { Point.init(x: midX, y: midY) }
    
    /// The middle of the high horizontal edge on this rectangle
    @inlinable
    var midXmaxY: Point { Point.init(x: midX, y: maxY) }
    
    /// The middle of the low vertical edge on this rectangle
    @inlinable
    var minXmidY: Point { Point.init(x: minX, y: midY) }
    
    /// The middle of the high vertical edge on this rectangle
    @inlinable
    var maxXmidY: Point { Point.init(x: maxX, y: midY) }
}
