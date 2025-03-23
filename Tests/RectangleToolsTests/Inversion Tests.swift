//
//  InversionTests.swift
//  RectangleTools
//
//  Created by Ky on 2024-08-05.
//

import Testing

import RectangleTools



struct InversionTests {

    @Test func twoDimensional() async throws {
        #expect(.init(width: -4, height: -8) == -TestSizes.intSize__4_8)
        #expect(.init(width: -3, height: -4) == -TestSizes.intSize__3_4)
        #expect(.init(width:  3, height: -4) == -TestSizes.intSize__n3_4)
        #expect(.init(width: -3, height:  4) == -TestSizes.intSize__3_n4)
        
        // #expect(.init(width: -4, height: -8) == -TestSizes.uIntSize__4_8) 🛑 Cannot compile because UInt can't be negated
        // #expect(.init(width: -3, height: -4) == -TestSizes.uIntSize__3_4) 🛑 Cannot compile because UInt can't be negated
        
        #expect(.init(width: -4, height: -8) == -TestSizes.cgSize__4_8)
        #expect(.init(width: -3, height: -4) == -TestSizes.cgSize__3_4)
        #expect(.init(width:  3, height: -4) == -TestSizes.cgSize__n3_4)
        #expect(.init(width: -3, height:  4) == -TestSizes.cgSize__3_n4)
        
        #expect(.init(width: -4, height: -8) == -TestSizes.decimalSize__4_8)
        #expect(.init(width: -3, height: -4) == -TestSizes.decimalSize__3_4)
        #expect(.init(width:  3, height: -4) == -TestSizes.decimalSize__n3_4)
        #expect(.init(width: -3, height:  4) == -TestSizes.decimalSize__3_n4)
        
        
        #expect(.init(x: -4, y: -8) == -TestPoints.intPoint__4_8)
        #expect(.init(x: -3, y: -4) == -TestPoints.intPoint__3_4)
        #expect(.init(x:  3, y: -4) == -TestPoints.intPoint__n3_4)
        #expect(.init(x: -3, y:  4) == -TestPoints.intPoint__3_n4)
        
        // #expect(.init(x: -4, y: -8) == -TestPoints.uIntPoint__4_8) 🛑 Cannot compile because UInt can't be negated
        // #expect(.init(x: -3, y: -4) == -TestPoints.uIntPoint__3_4) 🛑 Cannot compile because UInt can't be negated
        
        #expect(.init(x: -4, y: -8) == -TestPoints.cgPoint__4_8)
        #expect(.init(x: -3, y: -4) == -TestPoints.cgPoint__3_4)
        #expect(.init(x:  3, y: -4) == -TestPoints.cgPoint__n3_4)
        #expect(.init(x: -3, y:  4) == -TestPoints.cgPoint__3_n4)
        
        #expect(.init(x: -4, y: -8) == -TestPoints.decimalPoint__4_8)
        #expect(.init(x: -3, y: -4) == -TestPoints.decimalPoint__3_4)
        #expect(.init(x:  3, y: -4) == -TestPoints.decimalPoint__n3_4)
        #expect(.init(x: -3, y:  4) == -TestPoints.decimalPoint__3_n4)
    }
}
