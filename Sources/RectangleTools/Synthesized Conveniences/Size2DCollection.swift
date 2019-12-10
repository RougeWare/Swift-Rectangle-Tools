//
//  Integer Size Extensions.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-12-04.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation



/// Allows you to treat an integer size as a grid which scans from top-left to bottom-right in left-to-right horizontal
/// scanlines.
///
/// - Attention: Indices outside the bounds of the size are treated as its last element (bottom-rightmost)
public protocol Size2DCollection: Collection, Size2D
    where
        Length: BinaryInteger,
        Length.Stride: SignedInteger,
        Index == Size2DCollectionIndex<Length>
{
    associatedtype Element = Size2DCollectionIndex<Length>
    
    
    
    /// Returns the index of the topmost-leftmost element in this size
    var startIndex: Index { get }
    
    /// Returns the index of the bottommost-rightmost element in this size
    var endIndex: Index { get }
    
    /// Returns the last index which addresses a real element.
    ///
    /// Any indices after this are not in this size and thus should not be addressed.
    var lastValidIndex: Index { get }
    
    /// Returns the last element in this size
    var lastValidElement: Element { get }
    
    
    subscript(position: Index) -> Element { get }
    
    func index(after i: Index) -> Index
    
    
    /// Maps this size to a 2D array of values, using the given transformer to generate them.
    ///
    /// This will scan the size from top-left to bottom-right in left-to-right horizontal scanlines.
    ///
    /// - Parameters:
    ///   - transformer: The function which will transform each element to the new value/type
    ///    - element: Each position in a scanline of this Size
    /// - Returns: A 2D array of values as generated by the given transformer
    /// - Throws: Anything the given transformer function changes
    func map2D<ElementOfResult>(_ transformer: (_ element: Element) throws -> ElementOfResult) rethrows -> [[ElementOfResult]]
}



/// This functions as a basic point index in a 2D size collection.
///
/// - Note: This can't be a `BinaryIntegerPoint` since it strictly acts as a point in a scanline pattern, whereas a
///         `BinaryIntegerPoint` can act as any point in an integer plane.
public struct Size2DCollectionIndex<Length: BinaryInteger> {
    
    /// The position within a row of the scanline in a Size
    public let x: Length
    
    /// The row of a scanline in a Size
    public let y: Length
    
    
    /// Creates a new index for a `Size2D`
    ///
    /// - Parameters:
    ///   - x: The position within a row of the scanline in a Size
    ///   - y: The row of a scanline in a Size
    public init(x: Length, y: Length) {
        self.x = x
        self.y = y
    }
}



extension Size2DCollectionIndex: Comparable {
    public static func < (lhs: Size2DCollectionIndex<Length>, rhs: Size2DCollectionIndex<Length>) -> Bool {
        return lhs.y < rhs.y
            || (lhs.y == rhs.y
                && lhs.x < rhs.x
        )
    }
}



extension Size2DCollectionIndex: Point2D {
}



public extension Size2DCollection
    where
        Length: BinaryInteger,
        Element == Index
{
    var startIndex: Index { Index(x: 0, y: 0) }
    var endIndex: Index { Index(x: width, y: height) }
    var lastValidIndex: Index { Index(x: width - 1, y: height - 1) }
    
    var lastValidElement: Element { lastValidIndex }
    
    
    func index(after i: Index) -> Index {
        if i.y >= lastValidIndex.y {
            return lastValidIndex
        }
        else if i.x >= lastValidIndex.x {
            return Index(x: 0, y: i.y.advanced(by: 1))
        }
        else {
            return Index(x: i.x.advanced(by: 1), y: i.y)
        }
    }
    
    
    subscript(position: Index) -> Element {
        if position.x >= width
            || position.y >= height {
            return lastValidElement
        }
        else {
            return position
        }
    }
}



public extension Size2DCollection where Element == Index {
    func map2D<ElementOfResult>(_ transformer: (Element) throws -> ElementOfResult) rethrows -> [[ElementOfResult]] {
        try (0..<height).map { y in
            try (0..<width).map { x in
                try transformer(Element(x: .init(x), y: .init(y)))
            }
        }
    }
}



// MARK: - Conforming `BinaryIntegerSize` to this

extension BinaryIntegerSize: Sequence
    where
        Length: BinaryInteger,
        Length.Stride: SignedInteger
{
    public typealias Iterator = IndexingIterator<Self>
}



extension BinaryIntegerSize: Collection
    where
        Length: BinaryInteger,
        Length.Stride: SignedInteger
{
    // Empty on-purpose; All witnesses synthesized
}



extension BinaryIntegerSize: Size2DCollection
    where
        Length: BinaryInteger,
        Length.Stride: SignedInteger
{
    public typealias Index = Size2DCollectionIndex<Length>
    public typealias Element = Index
}
