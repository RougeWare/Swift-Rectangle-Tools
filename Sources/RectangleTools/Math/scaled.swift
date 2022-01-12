//
//  scaled.swift
//  
//
//  Created by Ky Leggiero on 2022-01-10.
//

import Foundation
import MultiplicativeArithmetic



/// A method by which one rectangular object can be scaled to fit within another
public enum ScaleMethod {
    
    /// Keep the aspect ratio, and change the size as necessary so that it perfectly fits within the parent and is not clipped.
    ///
    /// When scaling direction is `.down`, then this might result in zero or two sides touching parent sides.
    /// When scaling direction is `.upOrDown`, then two or four sides will touch parent sides.
    ///
    /// ```
    /// ScaleDirection.down
    ///     5×5              6×6                 8×8
    /// ┌╶╶┏━━━━┓╴╴┐   ┌───┏━━━━━┓╴╴╴┐   ┌╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┐
    /// ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎     ┏━━━━━┓     ╎
    /// ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎     ┃     ┃     ╎
    /// ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎     ┃     ┃     ╎
    /// └╶╶┗━━━━┛╴╴┘   ╎   ┃     ┃   ╎   ╎     ┃     ┃     ╎
    /// 3×6 → 2.5×5    └╶╶╶┗━━━━━┛╴╴╴┘   ╎     ┃     ┃     ╎
    ///                 3×6 → 3×6        ╎     ┗━━━━━┛     ╎
    ///                                  └╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┘
    ///                                      3×6 → 3×6
    /// ScaleDirection.upOrDown ->
    /// ┌╶╶┏━━━━┓╴╴┐   ┌╶╶╶┏━━━━━┓╴╴╴┐   ┌╶╶╶╶┏━━━━━━━┓╴╴╴╴┐
    /// ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    /// ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    /// ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    /// └╶╶┗━━━━┛╴╴┘   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///                └╶╶╶┗━━━━━┛╴╴╴┘   ╎    ┃       ┃    ╎
    ///                                  ╎    ┃       ┃    ╎
    ///                                  └╶╶╶╶┗━━━━━━━┛╴╴╴╴┘
    /// ```
    case fit
    
    /// Keep the aspect ratio, and change the size as neccessary so that it completely fills the parent, clipping two sides if necessary
    case fill
    
    /// Keep the aspect ratio
    case matchHeight
    case matchWidth
    case stretch
}



/// A method by which one rectangular object can be scaled to fit within another
public enum ScaleDirection {
    case down
    case upOrDown
}



public extension TwoDimensional
where Length: MultiplicativeArithmetic,
      Length: AdditiveArithmetic,
      Length: Comparable,
      Length: ExpressibleByIntegerLiteral {
    
    func scaled<Other>(within parent: Other, method: ScaleMethod) -> Self
    where Other: TwoDimensional, Other.Length == Self.Length,
          Self.Length: MultiplicativeArithmetic
    {
        func scaledToFit() -> Self {
            if self.aspectRatio() > parent.aspectRatio() {
                // This one is wider? Match widths
                return scaleToMatchWidth()
            }
            else {
                // Parent is wider? Match heights
                return scaledToMatchHeight()
            }
        }
        
        
        func scaledToFill() -> Self {
            if self.aspectRatio() > parent.aspectRatio() {
                // This one is wider? Match heights
                return scaledToMatchHeight()
            }
            else {
                // Parent is wider? Match widths
                return scaleToMatchWidth()
            }
        }
        
        
        func scaledToMatchHeight() -> Self {
            return .init(
                measurementX: self.aspectRatio() * parent.measurementY,
                measurementY: parent.measurementY)
        }
        
        
        func scaleToMatchWidth() -> Self {
            return .init(
                measurementX: parent.measurementX,
                measurementY: parent.measurementX / self.aspectRatio())
        }
        
        
        switch method {
        case .fit:
            return scaledToFit()
            
        case .fill:
            return scaledToFill()
            
        case .matchHeight:
            return scaledToMatchHeight()
            
        case .matchWidth:
            return scaleToMatchWidth()
            
        case .stretch:
            return .init(measurementX: parent.measurementX,
                         measurementY: parent.measurementY)
        }
    }
}
