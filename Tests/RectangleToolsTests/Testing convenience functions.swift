//
//  Testing convenience functions.swift
//  
//
//  Created by Ky Leggiero on 2022-01-11.
//

import Foundation
import RectangleTools



infix operator &&= : AssignmentPrecedence
infix operator ≈≈ : ComparisonPrecedence



/// Shorthand for `lhs = lhs && rhs`
func &&= (lhs: inout Bool, rhs: @autoclosure () -> Bool) {
    if lhs, !rhs() {
        lhs = false
    }
}



/// Whether the left-hand-side argument is approximately equal to the right-hand-side
func ≈≈ <Value> (lhs: Value, rhs: Value) -> Bool
    where Value: FloatingPoint,
          Value: ExpressibleByFloatLiteral
{
    abs(rhs - lhs) < .approximationTolerance
}



/// Whether the left-hand-side argument is approximately equal to the right-hand-side
func ≈≈ <Value> (lhs: Value, rhs: Value) -> Bool
where Value: TwoDimensional,
      Value.Length: FloatingPoint,
      Value.Length: ExpressibleByFloatLiteral
{
       lhs.measurementX ≈≈ rhs.measurementX
    && lhs.measurementY ≈≈ rhs.measurementY
}



/// Whether the left-hand-side argument is approximately equal to the right-hand-side
func ≈≈ <Value> (lhs: Value, rhs: Value) -> Bool
where Value: DualTwoDimensional,
      Value.FirstDimensionPair.Length: FloatingPoint,
      Value.FirstDimensionPair.Length: ExpressibleByFloatLiteral,
      Value.SecondDimensionPair.Length: FloatingPoint,
      Value.SecondDimensionPair.Length: ExpressibleByFloatLiteral
{
       lhs.firstDimensionPair ≈≈ rhs.firstDimensionPair
    && lhs.secondDimensionPair ≈≈ rhs.secondDimensionPair
}
