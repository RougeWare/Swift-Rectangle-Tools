//
//  IntPoint.swift
//  
//
//  Created by Ben Leggiero on 2019-10-22.
//

import Foundation



/// A point whose length is a binary integer
public struct BinaryIntegerPoint<Length: BinaryInteger>: MutablePoint2D {
    
    public var x: Length
    public var y: Length
    
    
    public init(x: Length, y: Length) {
        self.x = x
        self.y = y
    }
}




public typealias IntPoint = BinaryIntegerPoint<Int>
public typealias Int8Point = BinaryIntegerPoint<Int8>
public typealias Int16Point = BinaryIntegerPoint<Int16>
public typealias Int32Point = BinaryIntegerPoint<Int32>
public typealias Int64Point = BinaryIntegerPoint<Int64>

public typealias UIntPoint = BinaryIntegerPoint<UInt>
public typealias UInt8Point = BinaryIntegerPoint<UInt8>
public typealias UInt16Point = BinaryIntegerPoint<UInt16>
public typealias UInt32Point = BinaryIntegerPoint<UInt32>
public typealias UInt64Point = BinaryIntegerPoint<UInt64>
