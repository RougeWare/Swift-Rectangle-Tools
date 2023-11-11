//
//  CartesianMeasurable.swift
//
//
//  Created by The Northstar✨ System on 2023-11-06.
//

import Foundation



/// Represents something that can be measured on a Cartesian coordinate plane
public protocol CartesianMeasurable {
    
    /// The type to use for measurements of length (x/y, width/height, etc.).
    ///
    /// This is typically a numeric type like `Int`, `Float64`, or `Decimal`.
    associatedtype Length
    
    
    
    /// The lowest x value when measuring this
    ///
    /// This will always be less than or equal to ``maxX``
    ///
    /// ```
    ///             6 │
    /// 5.0  maxY → 5 │  ╭─╮
    ///             4 │  ╰╮╰───┬╮
    ///             3 │   │ ╭╮ │╵
    /// 2.0  minY → 2 │   ╰─╯╰─╯
    ///             1 │
    ///             0 ┼────────────
    ///               0 1 2 3 4 5 6
    ///                  ↑      ↑
    ///               minX      maxX
    ///                1.5      5.0
    /// ```
    var minX: Length { get }
    
    /// The lowest y value when measuring this
    ///
    /// This will always be less than or equal to ``maxY``
    ///
    /// ```
    ///             6 │
    /// 5.0  maxY → 5 │  ╭─╮
    ///             4 │  ╰╮╰───┬╮
    ///             3 │   │ ╭╮ │╵
    /// 2.0  minY → 2 │   ╰─╯╰─╯
    ///             1 │
    ///             0 ┼────────────
    ///               0 1 2 3 4 5 6
    ///                  ↑      ↑
    ///               minX      maxX
    ///                1.5      5.0
    /// ```
    var minY: Length { get }
    
    
    
    /// The highest x value when measuring this
    ///
    /// This will always be greater than or equal to ``minX``
    ///
    /// ```
    ///             6 │
    /// 5.0  maxY → 5 │  ╭─╮
    ///             4 │  ╰╮╰───┬╮
    ///             3 │   │ ╭╮ │╵
    /// 2.0  minY → 2 │   ╰─╯╰─╯
    ///             1 │
    ///             0 ┼────────────
    ///               0 1 2 3 4 5 6
    ///                  ↑      ↑
    ///               minX      maxX
    ///                1.5      5.0
    /// ```
    var maxX: Length { get }
    
    /// The highest y value when measuring this
    ///
    /// This will always be greater than or equal to ``minY``
    ///
    /// ```
    ///             6 │
    /// 5.0  maxY → 5 │  ╭─╮
    ///             4 │  ╰╮╰───┬╮
    ///             3 │   │ ╭╮ │╵
    /// 2.0  minY → 2 │   ╰─╯╰─╯
    ///             1 │
    ///             0 ┼────────────
    ///               0 1 2 3 4 5 6
    ///                  ↑      ↑
    ///               minX      maxX
    ///                1.5      5.0
    /// ```
    var maxY: Length { get }
}
