//
//  FourSidedAbsolute.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-03-07.
//  Copyright © 2020 Ben Leggiero. All rights reserved.
//

import Foundation



/// Some four-sided object, where the layout of the sides is absolute. That is to say, it doesn't depend on the UI
/// layout direction, langauge writing direction, Y axis flip, etc.
public protocol FourSidedAbsolute {
    
    /// The type of value for each of the 4 sides
    associatedtype Length
    
    
    /// The top side
    var top: Length { get }
    
    /// The right side
    var right: Length { get }
    
    /// The bottom side
    var bottom: Length { get }
    
    /// The left side
    var left: Length { get }
    
    
    /// Initializes a new object with the sides given individually and explicitly
    ///
    /// - Parameters:
    ///   - top:    The initial value for the top side
    ///   - right:  The initial value for the right side
    ///   - bottom: The initial value for the bottom side
    ///   - left:   The initial value for the left side
    init(top: Length, right: Length, bottom: Length, left: Length)
}



public extension FourSidedAbsolute {
    
    /// Initializes a new object with the vertical sides given individually and explicitly, but the horizontal sides
    /// both given the same value
    ///
    /// - Parameters:
    ///   - top:            The initial value for the top side
    ///   - eachHorizontal: The initial value for the right side, and also for the left side
    ///   - bottom:         The initial value for the bottom side
    @inline(__always)
    init(top: Length, eachHorizontal: Length, bottom: Length) {
        self.init(
            top: top,
            right: eachHorizontal,
            bottom: bottom,
            left: eachHorizontal
        )
    }
    
    
    /// Initializes a new object by giving each of the vertical sides the same value, and each of the horizontal sides
    /// a separate value
    ///
    /// - Parameters:
    ///   - eachVertical:   The initial value for the top side, and also for the bottom side
    ///   - eachHorizontal: The initial value for the right side, and also for the left side
    @inline(__always)
    init(eachVertical: Length, eachHorizontal: Length) {
        self.init(
            top: eachVertical,
            eachHorizontal: eachHorizontal,
            bottom: eachVertical
        )
    }
    
    
    /// Initializes a new object by giving each of the sides the same value
    ///
    /// - Parameter each: The initial value for the top side, the right, the bottom, and the left sides. This is the
    ///                   value given to each, not a sum of all.
    @inline(__always)
    init(each: Length) {
        self.init(
            eachVertical: each,
            eachHorizontal: each
        )
    }
}



public extension FourSidedAbsolute where Length: AdditiveArithmetic {
    /// The total of the horizontal sides of the four-sided object
    var horizontalTotal: Length { left + right }
    
    /// The total of the vertical sides of the four-sided object
    var verticalTotal: Length { top + bottom }
}



public extension FourSidedAbsolute where Length: ExpressibleByIntegerLiteral {
    /// One of these with all sides set to `0`
    static var zero: Self { Self.init(each: 0) }
}



public extension FourSidedAbsolute where Self: Equatable, Self.Length: Equatable {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.top == rhs.top
            && lhs.right == rhs.right
            && lhs.bottom == rhs.bottom
            && lhs.left == rhs.left
    }
}
