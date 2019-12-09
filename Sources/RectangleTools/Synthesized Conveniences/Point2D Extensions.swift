//
//  Point2D Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



public extension Point2D {
    
    /// Creates a copy of the given point
    ///
    /// - Parameter other: Another point to copy
    init(_ other: Self) {
        self.init(x: other.x, y: other.y)
    }
}
