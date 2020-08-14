//
//  DualTwoDimensionalTests.swift
//  RectangleToolsTests
//
//  Created by Ben Leggiero on 2020-08-08.
//

import XCTest
import RectangleTools



final class DualTwoDimensionalTests: XCTestCase {
    
    func test_zero() {
        let decimalZero = DecimalRectangle.zero
        
        let     intZero =          IntRect.zero
        let    int8Zero =         Int8Rect.zero
        let   int16Zero =        Int16Rect.zero
        let   int32Zero =        Int32Rect.zero
        let   int64Zero =        Int64Rect.zero
        let    uIntZero =         UIntRect.zero
        let   uInt8Zero =        UInt8Rect.zero
        let  uInt16Zero =       UInt16Rect.zero
        let  uInt32Zero =       UInt32Rect.zero
        let  uInt64Zero =       UInt64Rect.zero
        
        let  cgRectZero =           CGRect.zero
        
        
        XCTAssertEqual(decimalZero.origin, .zero)
        XCTAssertEqual(    intZero.origin, .zero)
        XCTAssertEqual(   int8Zero.origin, .zero)
        XCTAssertEqual(  int16Zero.origin, .zero)
        XCTAssertEqual(  int32Zero.origin, .zero)
        XCTAssertEqual(  int64Zero.origin, .zero)
        XCTAssertEqual(   uIntZero.origin, .zero)
        XCTAssertEqual(  uInt8Zero.origin, .zero)
        XCTAssertEqual( uInt16Zero.origin, .zero)
        XCTAssertEqual( uInt32Zero.origin, .zero)
        XCTAssertEqual( uInt64Zero.origin, .zero)
        XCTAssertEqual( cgRectZero.origin, .zero)
        
        XCTAssertEqual(decimalZero.size, .zero)
        XCTAssertEqual(    intZero.size, .zero)
        XCTAssertEqual(   int8Zero.size, .zero)
        XCTAssertEqual(  int16Zero.size, .zero)
        XCTAssertEqual(  int32Zero.size, .zero)
        XCTAssertEqual(  int64Zero.size, .zero)
        XCTAssertEqual(   uIntZero.size, .zero)
        XCTAssertEqual(  uInt8Zero.size, .zero)
        XCTAssertEqual( uInt16Zero.size, .zero)
        XCTAssertEqual( uInt32Zero.size, .zero)
        XCTAssertEqual( uInt64Zero.size, .zero)
        XCTAssertEqual( cgRectZero.size, .zero)
        
        
        XCTAssertEqual(decimalZero.origin.x, 0)
        XCTAssertEqual(    intZero.origin.x, 0)
        XCTAssertEqual(   int8Zero.origin.x, 0)
        XCTAssertEqual(  int16Zero.origin.x, 0)
        XCTAssertEqual(  int32Zero.origin.x, 0)
        XCTAssertEqual(  int64Zero.origin.x, 0)
        XCTAssertEqual(   uIntZero.origin.x, 0)
        XCTAssertEqual(  uInt8Zero.origin.x, 0)
        XCTAssertEqual( uInt16Zero.origin.x, 0)
        XCTAssertEqual( uInt32Zero.origin.x, 0)
        XCTAssertEqual( uInt64Zero.origin.x, 0)
        XCTAssertEqual( cgRectZero.origin.x, 0)
        
        XCTAssertEqual(decimalZero.origin.y, 0)
        XCTAssertEqual(    intZero.origin.y, 0)
        XCTAssertEqual(   int8Zero.origin.y, 0)
        XCTAssertEqual(  int16Zero.origin.y, 0)
        XCTAssertEqual(  int32Zero.origin.y, 0)
        XCTAssertEqual(  int64Zero.origin.y, 0)
        XCTAssertEqual(   uIntZero.origin.y, 0)
        XCTAssertEqual(  uInt8Zero.origin.y, 0)
        XCTAssertEqual( uInt16Zero.origin.y, 0)
        XCTAssertEqual( uInt32Zero.origin.y, 0)
        XCTAssertEqual( uInt64Zero.origin.y, 0)
        XCTAssertEqual( cgRectZero.origin.y, 0)
        
        XCTAssertEqual(decimalZero.origin.measurementX, 0)
        XCTAssertEqual(    intZero.origin.measurementX, 0)
        XCTAssertEqual(   int8Zero.origin.measurementX, 0)
        XCTAssertEqual(  int16Zero.origin.measurementX, 0)
        XCTAssertEqual(  int32Zero.origin.measurementX, 0)
        XCTAssertEqual(  int64Zero.origin.measurementX, 0)
        XCTAssertEqual(   uIntZero.origin.measurementX, 0)
        XCTAssertEqual(  uInt8Zero.origin.measurementX, 0)
        XCTAssertEqual( uInt16Zero.origin.measurementX, 0)
        XCTAssertEqual( uInt32Zero.origin.measurementX, 0)
        XCTAssertEqual( uInt64Zero.origin.measurementX, 0)
        XCTAssertEqual( cgRectZero.origin.measurementX, 0)
        
        XCTAssertEqual(decimalZero.origin.measurementY, 0)
        XCTAssertEqual(    intZero.origin.measurementY, 0)
        XCTAssertEqual(   int8Zero.origin.measurementY, 0)
        XCTAssertEqual(  int16Zero.origin.measurementY, 0)
        XCTAssertEqual(  int32Zero.origin.measurementY, 0)
        XCTAssertEqual(  int64Zero.origin.measurementY, 0)
        XCTAssertEqual(   uIntZero.origin.measurementY, 0)
        XCTAssertEqual(  uInt8Zero.origin.measurementY, 0)
        XCTAssertEqual( uInt16Zero.origin.measurementY, 0)
        XCTAssertEqual( uInt32Zero.origin.measurementY, 0)
        XCTAssertEqual( uInt64Zero.origin.measurementY, 0)
        XCTAssertEqual( cgRectZero.origin.measurementY, 0)
        
        
        XCTAssertEqual(decimalZero.size.width, 0)
        XCTAssertEqual(    intZero.size.width, 0)
        XCTAssertEqual(   int8Zero.size.width, 0)
        XCTAssertEqual(  int16Zero.size.width, 0)
        XCTAssertEqual(  int32Zero.size.width, 0)
        XCTAssertEqual(  int64Zero.size.width, 0)
        XCTAssertEqual(   uIntZero.size.width, 0)
        XCTAssertEqual(  uInt8Zero.size.width, 0)
        XCTAssertEqual( uInt16Zero.size.width, 0)
        XCTAssertEqual( uInt32Zero.size.width, 0)
        XCTAssertEqual( uInt64Zero.size.width, 0)
        XCTAssertEqual( cgRectZero.size.width, 0)
        
        XCTAssertEqual(decimalZero.size.height, 0)
        XCTAssertEqual(    intZero.size.height, 0)
        XCTAssertEqual(   int8Zero.size.height, 0)
        XCTAssertEqual(  int16Zero.size.height, 0)
        XCTAssertEqual(  int32Zero.size.height, 0)
        XCTAssertEqual(  int64Zero.size.height, 0)
        XCTAssertEqual(   uIntZero.size.height, 0)
        XCTAssertEqual(  uInt8Zero.size.height, 0)
        XCTAssertEqual( uInt16Zero.size.height, 0)
        XCTAssertEqual( uInt32Zero.size.height, 0)
        XCTAssertEqual( uInt64Zero.size.height, 0)
        XCTAssertEqual( cgRectZero.size.height, 0)
        
        XCTAssertEqual(decimalZero.size.measurementX, 0)
        XCTAssertEqual(    intZero.size.measurementX, 0)
        XCTAssertEqual(   int8Zero.size.measurementX, 0)
        XCTAssertEqual(  int16Zero.size.measurementX, 0)
        XCTAssertEqual(  int32Zero.size.measurementX, 0)
        XCTAssertEqual(  int64Zero.size.measurementX, 0)
        XCTAssertEqual(   uIntZero.size.measurementX, 0)
        XCTAssertEqual(  uInt8Zero.size.measurementX, 0)
        XCTAssertEqual( uInt16Zero.size.measurementX, 0)
        XCTAssertEqual( uInt32Zero.size.measurementX, 0)
        XCTAssertEqual( uInt64Zero.size.measurementX, 0)
        XCTAssertEqual( cgRectZero.size.measurementX, 0)
        
        XCTAssertEqual(decimalZero.size.measurementY, 0)
        XCTAssertEqual(    intZero.size.measurementY, 0)
        XCTAssertEqual(   int8Zero.size.measurementY, 0)
        XCTAssertEqual(  int16Zero.size.measurementY, 0)
        XCTAssertEqual(  int32Zero.size.measurementY, 0)
        XCTAssertEqual(  int64Zero.size.measurementY, 0)
        XCTAssertEqual(   uIntZero.size.measurementY, 0)
        XCTAssertEqual(  uInt8Zero.size.measurementY, 0)
        XCTAssertEqual( uInt16Zero.size.measurementY, 0)
        XCTAssertEqual( uInt32Zero.size.measurementY, 0)
        XCTAssertEqual( uInt64Zero.size.measurementY, 0)
        XCTAssertEqual( cgRectZero.size.measurementY, 0)
    }
    
    
    func test_one() {
        let decimalZero = DecimalRectangle.one
        
        let     intZero =          IntRect.one
        let    int8Zero =         Int8Rect.one
        let   int16Zero =        Int16Rect.one
        let   int32Zero =        Int32Rect.one
        let   int64Zero =        Int64Rect.one
        let    uIntZero =         UIntRect.one
        let   uInt8Zero =        UInt8Rect.one
        let  uInt16Zero =       UInt16Rect.one
        let  uInt32Zero =       UInt32Rect.one
        let  uInt64Zero =       UInt64Rect.one
        
        let  cgRectZero =           CGRect.one
        
        
        XCTAssertEqual(decimalZero.origin, .one)
        XCTAssertEqual(    intZero.origin, .one)
        XCTAssertEqual(   int8Zero.origin, .one)
        XCTAssertEqual(  int16Zero.origin, .one)
        XCTAssertEqual(  int32Zero.origin, .one)
        XCTAssertEqual(  int64Zero.origin, .one)
        XCTAssertEqual(   uIntZero.origin, .one)
        XCTAssertEqual(  uInt8Zero.origin, .one)
        XCTAssertEqual( uInt16Zero.origin, .one)
        XCTAssertEqual( uInt32Zero.origin, .one)
        XCTAssertEqual( uInt64Zero.origin, .one)
        XCTAssertEqual( cgRectZero.origin, .one)
        
        XCTAssertEqual(decimalZero.size, .one)
        XCTAssertEqual(    intZero.size, .one)
        XCTAssertEqual(   int8Zero.size, .one)
        XCTAssertEqual(  int16Zero.size, .one)
        XCTAssertEqual(  int32Zero.size, .one)
        XCTAssertEqual(  int64Zero.size, .one)
        XCTAssertEqual(   uIntZero.size, .one)
        XCTAssertEqual(  uInt8Zero.size, .one)
        XCTAssertEqual( uInt16Zero.size, .one)
        XCTAssertEqual( uInt32Zero.size, .one)
        XCTAssertEqual( uInt64Zero.size, .one)
        XCTAssertEqual( cgRectZero.size, .one)
        
        
        XCTAssertEqual(decimalZero.origin.x, 1)
        XCTAssertEqual(    intZero.origin.x, 1)
        XCTAssertEqual(   int8Zero.origin.x, 1)
        XCTAssertEqual(  int16Zero.origin.x, 1)
        XCTAssertEqual(  int32Zero.origin.x, 1)
        XCTAssertEqual(  int64Zero.origin.x, 1)
        XCTAssertEqual(   uIntZero.origin.x, 1)
        XCTAssertEqual(  uInt8Zero.origin.x, 1)
        XCTAssertEqual( uInt16Zero.origin.x, 1)
        XCTAssertEqual( uInt32Zero.origin.x, 1)
        XCTAssertEqual( uInt64Zero.origin.x, 1)
        XCTAssertEqual( cgRectZero.origin.x, 1)
        
        XCTAssertEqual(decimalZero.origin.y, 1)
        XCTAssertEqual(    intZero.origin.y, 1)
        XCTAssertEqual(   int8Zero.origin.y, 1)
        XCTAssertEqual(  int16Zero.origin.y, 1)
        XCTAssertEqual(  int32Zero.origin.y, 1)
        XCTAssertEqual(  int64Zero.origin.y, 1)
        XCTAssertEqual(   uIntZero.origin.y, 1)
        XCTAssertEqual(  uInt8Zero.origin.y, 1)
        XCTAssertEqual( uInt16Zero.origin.y, 1)
        XCTAssertEqual( uInt32Zero.origin.y, 1)
        XCTAssertEqual( uInt64Zero.origin.y, 1)
        XCTAssertEqual( cgRectZero.origin.y, 1)
        
        XCTAssertEqual(decimalZero.origin.measurementX, 1)
        XCTAssertEqual(    intZero.origin.measurementX, 1)
        XCTAssertEqual(   int8Zero.origin.measurementX, 1)
        XCTAssertEqual(  int16Zero.origin.measurementX, 1)
        XCTAssertEqual(  int32Zero.origin.measurementX, 1)
        XCTAssertEqual(  int64Zero.origin.measurementX, 1)
        XCTAssertEqual(   uIntZero.origin.measurementX, 1)
        XCTAssertEqual(  uInt8Zero.origin.measurementX, 1)
        XCTAssertEqual( uInt16Zero.origin.measurementX, 1)
        XCTAssertEqual( uInt32Zero.origin.measurementX, 1)
        XCTAssertEqual( uInt64Zero.origin.measurementX, 1)
        XCTAssertEqual( cgRectZero.origin.measurementX, 1)
        
        XCTAssertEqual(decimalZero.origin.measurementY, 1)
        XCTAssertEqual(    intZero.origin.measurementY, 1)
        XCTAssertEqual(   int8Zero.origin.measurementY, 1)
        XCTAssertEqual(  int16Zero.origin.measurementY, 1)
        XCTAssertEqual(  int32Zero.origin.measurementY, 1)
        XCTAssertEqual(  int64Zero.origin.measurementY, 1)
        XCTAssertEqual(   uIntZero.origin.measurementY, 1)
        XCTAssertEqual(  uInt8Zero.origin.measurementY, 1)
        XCTAssertEqual( uInt16Zero.origin.measurementY, 1)
        XCTAssertEqual( uInt32Zero.origin.measurementY, 1)
        XCTAssertEqual( uInt64Zero.origin.measurementY, 1)
        XCTAssertEqual( cgRectZero.origin.measurementY, 1)
        
        
        XCTAssertEqual(decimalZero.size.width, 1)
        XCTAssertEqual(    intZero.size.width, 1)
        XCTAssertEqual(   int8Zero.size.width, 1)
        XCTAssertEqual(  int16Zero.size.width, 1)
        XCTAssertEqual(  int32Zero.size.width, 1)
        XCTAssertEqual(  int64Zero.size.width, 1)
        XCTAssertEqual(   uIntZero.size.width, 1)
        XCTAssertEqual(  uInt8Zero.size.width, 1)
        XCTAssertEqual( uInt16Zero.size.width, 1)
        XCTAssertEqual( uInt32Zero.size.width, 1)
        XCTAssertEqual( uInt64Zero.size.width, 1)
        XCTAssertEqual( cgRectZero.size.width, 1)
        
        XCTAssertEqual(decimalZero.size.height, 1)
        XCTAssertEqual(    intZero.size.height, 1)
        XCTAssertEqual(   int8Zero.size.height, 1)
        XCTAssertEqual(  int16Zero.size.height, 1)
        XCTAssertEqual(  int32Zero.size.height, 1)
        XCTAssertEqual(  int64Zero.size.height, 1)
        XCTAssertEqual(   uIntZero.size.height, 1)
        XCTAssertEqual(  uInt8Zero.size.height, 1)
        XCTAssertEqual( uInt16Zero.size.height, 1)
        XCTAssertEqual( uInt32Zero.size.height, 1)
        XCTAssertEqual( uInt64Zero.size.height, 1)
        XCTAssertEqual( cgRectZero.size.height, 1)
        
        XCTAssertEqual(decimalZero.size.measurementX, 1)
        XCTAssertEqual(    intZero.size.measurementX, 1)
        XCTAssertEqual(   int8Zero.size.measurementX, 1)
        XCTAssertEqual(  int16Zero.size.measurementX, 1)
        XCTAssertEqual(  int32Zero.size.measurementX, 1)
        XCTAssertEqual(  int64Zero.size.measurementX, 1)
        XCTAssertEqual(   uIntZero.size.measurementX, 1)
        XCTAssertEqual(  uInt8Zero.size.measurementX, 1)
        XCTAssertEqual( uInt16Zero.size.measurementX, 1)
        XCTAssertEqual( uInt32Zero.size.measurementX, 1)
        XCTAssertEqual( uInt64Zero.size.measurementX, 1)
        XCTAssertEqual( cgRectZero.size.measurementX, 1)
        
        XCTAssertEqual(decimalZero.size.measurementY, 1)
        XCTAssertEqual(    intZero.size.measurementY, 1)
        XCTAssertEqual(   int8Zero.size.measurementY, 1)
        XCTAssertEqual(  int16Zero.size.measurementY, 1)
        XCTAssertEqual(  int32Zero.size.measurementY, 1)
        XCTAssertEqual(  int64Zero.size.measurementY, 1)
        XCTAssertEqual(   uIntZero.size.measurementY, 1)
        XCTAssertEqual(  uInt8Zero.size.measurementY, 1)
        XCTAssertEqual( uInt16Zero.size.measurementY, 1)
        XCTAssertEqual( uInt32Zero.size.measurementY, 1)
        XCTAssertEqual( uInt64Zero.size.measurementY, 1)
        XCTAssertEqual( cgRectZero.size.measurementY, 1)
    }
    
    
    static let allTests = [
        ("test_zero", test_zero),
        ("test_one", test_one),
    ]
}
