//
//  CGPoint + Point2D.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation
#if canImport(CoreGraphics)
import CoreGraphics
#endif



extension CGPoint: MutablePoint2D {
    public typealias Length = CGFloat
}
