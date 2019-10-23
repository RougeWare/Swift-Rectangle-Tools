//
//  DecimalSize.swift
//  
//
//  Created by Ben Leggiero on 2019-10-22.
//

import Foundation



/// A size whose length is a `Decimal`
public struct DecimalSize: MutableSize2D {
    
    public typealias Length = Decimal
    
    
    
    public var width: Length
    public var height: Length
    
    
    public init(width: Length, height: Length) {
        self.width = width
        self.height = height
    }
}
