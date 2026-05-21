//
//  File.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation
#if canImport(CoreGraphics)
import CoreGraphics
#endif



extension CGRect: MutableRectangle {
    public typealias Length = CGFloat
}
