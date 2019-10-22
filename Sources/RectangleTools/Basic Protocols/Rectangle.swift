//
//  Rectangle.swift
//  
//
//  Created by Ben Leggiero on 2019-10-21.
//

import Foundation



/// A two-dimensional rectangle
public protocol Rectangle {
    
    /// The unit in which the origin of the rectangle is defined
    associatedtype Point: Point2D
    
    /// The unit in which the size of the rectangle is defined
    associatedtype Size: Size2D
    
    
    
    /// The location of the rectangle's origin vertex.
    ///
    /// The absolute location of this on the rectangle depends on the directionality of the coordinate system (e.g.
    /// Cartesian vs. Flipped) as well as whether either side measurement is negative.
    var origin: Point { get }
    
    /// The size of the rectangle.
    ///
    /// The size can have negative sides, which mean they extend in the opposite direction than normal, relative to
    /// the origin.
    var size: Size { get }
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
