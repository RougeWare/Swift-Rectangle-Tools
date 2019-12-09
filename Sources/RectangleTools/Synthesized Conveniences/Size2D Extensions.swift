//
//  Size2D Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-08.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



public extension Size2D {
    
    /// Creates a copy of the given size
    ///
    /// - Parameter other: Another size to copy
    init(_ other: Self) {
        self.init(width: other.width, height: other.height)
    }
}
