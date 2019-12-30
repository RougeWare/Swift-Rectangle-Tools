//
//  InitializableFromInteger.swift
//  
//
//  Created by Ben Leggiero on 2019-12-28.
//

import Foundation



public protocol InitializableFromInteger {
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
extension Float80: InitializableFromInteger {}
extension CGFloat: InitializableFromInteger {}
