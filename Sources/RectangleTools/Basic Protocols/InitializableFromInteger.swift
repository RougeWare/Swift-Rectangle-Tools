//
//  InitializableFromInteger.swift
//  
//
//  Created by Ben Leggiero on 2019-12-28.
//

import Foundation
import CoreGraphics



/// Anything which can be losslessly initialized from an integer
public protocol InitializableFromInteger {
    
    /// Creates a new instance based on the given integer
    init<BI>(_ integer: BI) where BI: BinaryInteger
}



// MARK: -

extension Int: InitializableFromInteger {}
extension Int8: InitializableFromInteger {}
extension Int16: InitializableFromInteger {}
extension Int32: InitializableFromInteger {}
extension Int64: InitializableFromInteger {}

extension UInt: InitializableFromInteger {}
extension UInt8: InitializableFromInteger {}
extension UInt16: InitializableFromInteger {}
extension UInt32: InitializableFromInteger {}
extension UInt64: InitializableFromInteger {}

extension Float32: InitializableFromInteger {}
extension Float64: InitializableFromInteger {}
#if (arch(i386) || arch(x86_64)) && !os(Windows)
extension Float80: InitializableFromInteger {}
#endif
extension CGFloat: InitializableFromInteger {}
