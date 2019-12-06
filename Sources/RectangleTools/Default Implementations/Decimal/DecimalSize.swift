//
//  DecimalSize.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-22.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
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
