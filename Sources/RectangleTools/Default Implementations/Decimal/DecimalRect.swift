//
//  DecimalRect.swift
//  
//
//  Created by Ben Leggiero on 2019-10-22.
//

import Foundation



/// A rectangle whose lengths are `Decimal`s
public struct DecimalRectangle: MutableRectangle {
    
    public typealias Length = Decimal
    public typealias Point = DecimalPoint
    public typealias Size = DecimalSize
    
    
    
    public var origin: Point
    public var size: Size
    
    
    public init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
}
