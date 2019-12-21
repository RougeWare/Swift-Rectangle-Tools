//
//  Size2D Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation
import MultiplicativeArithmetic



public extension Size2D {
    
    /// Creates a copy of the given size
    ///
    /// - Parameter other: Another size to copy
    init(_ other: Self) {
        self.init(width: other.width, height: other.height)
    }
}



public extension Size2D where Length: Comparable, Length: AdditiveArithmetic {
    
    // MARK: Lines
    
    /// The smallest X value in this rectangle
    @inlinable
    var minX: Length { min(.zero, width) }
    
    /// The smallest Y value in this rectangle
    @inlinable
    var minY: Length { min(.zero, height) }
    
    
    /// The largest X value in this rectangle
    @inlinable
    var maxX: Length { max(.zero, width) }
    
    /// The largest Y value in this rectangle
    @inlinable
    var maxY: Length { max(.zero, height) }
    
    
    // MARK: Points
    
    /// The point with the smallest X and Y values in this rectangle
    @inlinable
    func minXminY<Point: Point2D>() -> Point where Point.Length == Self.Length { Point.init(x: minX, y: minY) }
    
    /// The point with the smallest X and largest Y values in this rectangle
    @inlinable
    func minXmaxY<Point: Point2D>() -> Point where Point.Length == Self.Length { Point.init(x: minX, y: maxY) }
    
    /// The point with the largest X and smallest Y values in this rectangle
    @inlinable
    func maxXminY<Point: Point2D>() -> Point where Point.Length == Self.Length { Point.init(x: maxX, y: minY) }
    
    /// The point with the largest X and Y values in this rectangle
    @inlinable
    func maxXmaxY<Point: Point2D>() -> Point where Point.Length == Self.Length { Point.init(x: maxX, y: maxY) }
    
}



public extension Size2D
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
    func center<Point: Point2D>() -> Point
        where Point.Length == Self.Length
    { midXmidY() }
    
    
    // MARK: Points
    
    /// The middle of the low horizontal edge on this rectangle
    @inlinable
    func midXminY<Point: Point2D>() -> Point
        where Point.Length == Self.Length
    { Point.init(x: midX, y: minY) }
    
    /// The middlemost point in this rectangle
    @inlinable
    func midXmidY<Point: Point2D>() -> Point
        where Point.Length == Self.Length
    { Point.init(x: midX, y: midY) }
    
    /// The middle of the high horizontal edge on this rectangle
    @inlinable
    func midXmaxY<Point: Point2D>() -> Point
        where Point.Length == Self.Length
    { Point.init(x: midX, y: maxY) }
    
    /// The middle of the low vertical edge on this rectangle
    @inlinable
    func minXmidY<Point: Point2D>() -> Point
        where Point.Length == Self.Length
    { Point.init(x: minX, y: midY) }
    
    /// The middle of the high vertical edge on this rectangle
    @inlinable
    func maxXmidY<Point: Point2D>() -> Point
        where Point.Length == Self.Length
    { Point.init(x: maxX, y: midY) }
}
