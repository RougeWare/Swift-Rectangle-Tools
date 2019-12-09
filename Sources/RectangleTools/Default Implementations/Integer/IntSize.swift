//
//  IntSize.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-22.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



/// A size whose length is a binary integer
public struct BinaryIntegerSize<Length: BinaryInteger>: MutableSize2D {
    
    public var width: Length
    public var height: Length
    
    
    public init(width: Length, height: Length) {
        self.width = width
        self.height = height
    }
}




public typealias IntSize = BinaryIntegerSize<Int>
public typealias Int8Size = BinaryIntegerSize<Int8>
public typealias Int16Size = BinaryIntegerSize<Int16>
public typealias Int32Size = BinaryIntegerSize<Int32>
public typealias Int64Size = BinaryIntegerSize<Int64>

public typealias UIntSize = BinaryIntegerSize<UInt>
public typealias UInt8Size = BinaryIntegerSize<UInt8>
public typealias UInt16Size = BinaryIntegerSize<UInt16>
public typealias UInt32Size = BinaryIntegerSize<UInt32>
public typealias UInt64Size = BinaryIntegerSize<UInt64>



// MARK: - Default conformances

extension BinaryIntegerSize: Equatable {}
extension BinaryIntegerSize: Hashable {}
extension BinaryIntegerSize: Codable where Length: Codable {}
