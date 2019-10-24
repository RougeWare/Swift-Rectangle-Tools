//
//  IntRect.swift
//  
//
//  Created by Ben Leggiero on 2019-10-22.
//

import Foundation



/// A rectangle whose lengths are binary integers
public struct BinaryIntegerRectangle<Length: BinaryInteger>: MutableRectangle {
    
    public typealias Point = BinaryIntegerPoint<Length>
    public typealias Size = BinaryIntegerSize<Length>
    
    
    
    public var origin: Point
    public var size: Size
    
    
    public init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
}




public typealias IntRect = BinaryIntegerRectangle<Int>
public typealias Int8Rect = BinaryIntegerRectangle<Int8>
public typealias Int16Rect = BinaryIntegerRectangle<Int16>
public typealias Int32Rect = BinaryIntegerRectangle<Int32>
public typealias Int64Rect = BinaryIntegerRectangle<Int64>

public typealias UIntRect = BinaryIntegerRectangle<UInt>
public typealias UInt8Rect = BinaryIntegerRectangle<UInt8>
public typealias UInt16Rect = BinaryIntegerRectangle<UInt16>
public typealias UInt32Rect = BinaryIntegerRectangle<UInt32>
public typealias UInt64Rect = BinaryIntegerRectangle<UInt64>
