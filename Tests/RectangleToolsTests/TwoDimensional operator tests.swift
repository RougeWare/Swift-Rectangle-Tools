//
//  TwoDimensional operator tests.swift
//  RectangleTools
//
//  Created by Ky on 2025-03-22.
//

import Testing
import CoreGraphics

import RectangleTools



struct CGSize_operatorTests {
    @Test
    func testAdd() {
        #expect(CGSize(width: 0, height: 0) == (CGSize.zero + CGFloat.zero))
        #expect(CGSize(width: 0, height: 0) == (CGSize.zero - CGFloat.zero))
        
        #expect(CGSize(width:  100, height:  100) == (CGSize.zero + 100))
        #expect(CGSize(width: -100, height: -100) == (CGSize.zero - 100))
        #expect(CGSize(width:  100, height:  100) == (100 + CGSize.zero))
        #expect(CGSize(width:  100, height:  100) == (100 - CGSize.zero))
        
        #expect(CGSize(width:  101, height:  101) == (CGSize.one + 100))
        #expect(CGSize(width:  -99, height:  -99) == (CGSize.one - 100))
        #expect(CGSize(width:  101, height:  101) == (100 + CGSize.one))
        #expect(CGSize(width:   99, height:   99) == (100 - CGSize.one))
        
        #expect(CGSize(width:  220, height:  316) == (CGSize(width: 173, height: 269) + 47))
        #expect(CGSize(width:  126, height:  222) == (CGSize(width: 173, height: 269) - 47))
        #expect(CGSize(width:  220, height:  316) == (47 + CGSize(width: 173, height: 269)))
        #expect(CGSize(width: -126, height: -222) == (47 - CGSize(width: 173, height: 269)))
    }
    
    
    @Test
    func testMultiply() {
        #expect(CGSize(width: 0          , height: 0   )  == (CGSize.zero * CGFloat.zero))
        #expect(CGSize(width: CGFloat.nan, height: .nan) ~== (CGSize.zero / CGFloat.zero))
        
        #expect(CGSize(width: 0          , height: 0   )  == (CGSize.zero * 100))
        #expect(CGSize(width: 0          , height: 0   )  == (CGSize.zero / 100))
        #expect(CGSize(width: 0          , height: 0   )  == (100 * CGSize.zero))
        #expect(CGSize(width: CGFloat.infinity, height: .infinity) ~== (100 / CGSize.zero))
        
        #expect(CGSize(width: 100  , height: 100   )  == (CGSize.one * 100))
        #expect(CGSize(width:  0.01, height:   0.01) ~== (CGSize.one / 100))
        #expect(CGSize(width: 100  , height: 100   )  == (100 * CGSize.one))
        #expect(CGSize(width: 100  , height: 100   )  == (100 / CGSize.one))
        
        #expect(CGSize(width: 8_131         , height: 12_643         )  == (CGSize(width: 173, height: 269) * 47))
        #expect(CGSize(width:     3.68085106, height:      5.72340426) ~== (CGSize(width: 173, height: 269) / 47))
        #expect(CGSize(width: 8_131         , height: 12_643         )  == (47 * CGSize(width: 173, height: 269)))
        #expect(CGSize(width:     0.27167630, height:      0.17472119) ~== (47 / CGSize(width: 173, height: 269)))
    }
}



struct CGPoint_operatorTests {
    @Test
    func testAdd() {
        #expect(CGPoint(x: 0, y: 0) == (CGPoint.zero + CGFloat.zero))
        
        #expect(CGPoint(x:  100, y:  100) == (CGPoint.zero + 100))
        #expect(CGPoint(x: -100, y: -100) == (CGPoint.zero - 100))
        #expect(CGPoint(x:  100, y:  100) == (100 + CGPoint.zero))
        #expect(CGPoint(x:  100, y:  100) == (100 - CGPoint.zero))
        
        #expect(CGPoint(x:  101, y:  101) == (CGPoint.one + 100))
        #expect(CGPoint(x:  -99, y:  -99) == (CGPoint.one - 100))
        #expect(CGPoint(x:  101, y:  101) == (100 + CGPoint.one))
        #expect(CGPoint(x:   99, y:   99) == (100 - CGPoint.one))
        
        #expect(CGPoint(x:  220, y:  316) == (CGPoint(x: 173, y: 269) + 47))
        #expect(CGPoint(x:  126, y:  222) == (CGPoint(x: 173, y: 269) - 47))
        #expect(CGPoint(x:  220, y:  316) == (47 + CGPoint(x: 173, y: 269)))
        #expect(CGPoint(x: -126, y: -222) == (47 - CGPoint(x: 173, y: 269)))
    }
    
    
    @Test
    func testMultiply() {
        #expect(CGPoint(x: 0          , y: 0   )  == (CGPoint.zero * CGFloat.zero))
        #expect(CGPoint(x: CGFloat.nan, y: .nan) ~== (CGPoint.zero / CGFloat.zero))
        
        #expect(CGPoint(x: 0          , y: 0   )  == (CGPoint.zero * 100))
        #expect(CGPoint(x: 0          , y: 0   )  == (CGPoint.zero / 100))
        #expect(CGPoint(x: 0          , y: 0   )  == (100 * CGPoint.zero))
        #expect(CGPoint(x: CGFloat.infinity, y: .infinity) ~== (100 / CGPoint.zero))
        
        #expect(CGPoint(x: 100  , y: 100   )  == (CGPoint.one * 100))
        #expect(CGPoint(x:  0.01, y:   0.01) ~== (CGPoint.one / 100))
        #expect(CGPoint(x: 100  , y: 100   )  == (100 * CGPoint.one))
        #expect(CGPoint(x: 100  , y: 100   )  == (100 / CGPoint.one))
        
        #expect(CGPoint(x: 8_131         , y: 12_643         )  == (CGPoint(x: 173, y: 269) * 47))
        #expect(CGPoint(x:     3.68085106, y:      5.72340426) ~== (CGPoint(x: 173, y: 269) / 47))
        #expect(CGPoint(x: 8_131         , y: 12_643         )  == (47 * CGPoint(x: 173, y: 269)))
        #expect(CGPoint(x:     0.27167630, y:      0.17472119) ~== (47 / CGPoint(x: 173, y: 269)))
    }
}



infix operator ~== : ComparisonPrecedence

private func ~== <T> (lhs: T, rhs: T) -> Bool
where T: TwoDimensional,
      T.Length: BinaryFloatingPoint
{
       (lhs.measurementX ~== rhs.measurementX)
    && (lhs.measurementY ~== rhs.measurementY)
}


private func ~== <T> (lhs: T, rhs: T) -> Bool
where T: BinaryFloatingPoint
{
       (lhs.isNaN      && rhs.isNaN)
    || (lhs.isInfinite && rhs.isInfinite)
    || abs(lhs - rhs) < 0.0001
}
