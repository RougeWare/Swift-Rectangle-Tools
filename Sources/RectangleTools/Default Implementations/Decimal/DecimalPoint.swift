//
//  DecimalPoint.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-22.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



/// A point whose length is a `Decimal`
public struct DecimalPoint: MutablePoint2D {
    
    public typealias Length = Decimal
    
    
    
    public var x: Length
    public var y: Length
    
    
    public init(x: Length, y: Length) {
        self.x = x
        self.y = y
    }
}



// MARK: - Default conformances

extension DecimalPoint: Equatable {}
extension DecimalPoint: Hashable {}
extension DecimalPoint: Codable {}
