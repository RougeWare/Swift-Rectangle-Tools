//
//  CIVector + DualTwoDimensional.swift
//
//
//  Created by The Northstar✨ System on 2023-11-16.
//

import CoreImage



extension CIVector: DualTwoDimensional {
    
    public var firstDimensionPair: FirstDimensionPair {
        .init(x: x, y: y)
    }
    
    
    public var secondDimensionPair: SecondDimensionPair {
        .init(x: z, y: w)
    }
    
    
    
    public typealias FirstDimensionPair = CGPoint
    public typealias SecondDimensionPair = CGPoint
}



public extension DualTwoDimensional where Self: CIVector {
    
    init(firstDimensionPair: FirstDimensionPair,
         secondDimensionPair: SecondDimensionPair) {
        self.init(x: firstDimensionPair.x,
                  y: firstDimensionPair.y,
                  z: secondDimensionPair.x,
                  w: secondDimensionPair.y)
    }
}
