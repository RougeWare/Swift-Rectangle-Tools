//
//  DecimalPoint.swift
//  
//
//  Created by Ben Leggiero on 2019-10-22.
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
