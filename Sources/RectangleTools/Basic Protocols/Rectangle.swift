//
//  Rectangle.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



/// A two-dimensional rectangle
public protocol Rectangle {
    
    /// The unit in which the origin and size are defined
    associatedtype Length
    
    /// The unit in which the origin of the rectangle is defined
    associatedtype Point: Point2D where Point.Length == Self.Length
    
    /// The unit in which the size of the rectangle is defined
    associatedtype Size: Size2D where Size.Length == Self.Length
    
    
    
    /// The location of the rectangle's origin vertex.
    ///
    /// The absolute location of this on the rectangle depends on the directionality of the coordinate system (e.g.
    /// Cartesian vs. Flipped) as well as whether either side measurement is negative.
    var origin: Point { get }
    
    /// The size of the rectangle.
    ///
    /// The size can have negative side lengths, which mean they extend in the opposite direction than normal, relative
    /// to the origin.
    var size: Size { get }
    
    
    /// Creates a new rectangle of the given size at the given origin
    ///
    /// - Parameters:
    ///   - origin: The location of the new rectangle's origin
    ///   - size:   The new rectangle's size
    init(origin: Point, size: Size)
}



/// A two-dimensional rectangle which can be mutated
public protocol MutableRectangle: Rectangle
    where
        Point: MutablePoint2D,
        Size: MutableSize2D
{
    var origin: Point { get set }
    var size: Size { get set }
}
