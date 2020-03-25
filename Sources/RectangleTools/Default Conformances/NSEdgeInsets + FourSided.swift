//
//  NSEdgeInsets + FourSided.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-03-07.
//  Copyright © 2020 Ben Leggiero. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public typealias EdgeInsets = UIEdgeInsets
public typealias UserInterfaceLayoutDirection = UIUserInterfaceLayoutDirection
#elseif canImport(AppKit)
import AppKit

public typealias EdgeInsets = NSEdgeInsets
public typealias UserInterfaceLayoutDirection = NSUserInterfaceLayoutDirection
#endif



extension EdgeInsets: FourSidedAbsolute {
    public init(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) {
        self.init(top: top, left: left, bottom: bottom, right: right)
    }
    
    
    public init(top: CGFloat, trailing: CGFloat, bottom: CGFloat, leading: CGFloat) {
        switch userInterfaceLayoutDirection {
        case .leftToRight:
            self.init(top: top, right: trailing, bottom: bottom, left: leading)
            
        case .rightToLeft:
        self.init(top: top, right: leading, bottom: bottom, left: trailing)
            
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(userInterfaceLayoutDirection)")
            self.init(top: top, right: trailing, bottom: bottom, left: leading)
        }
    }
}



public extension EdgeInsets {
    /// The value of whichever edge inset is leading in the current app's UI direction
    var leading: CGFloat {
        switch userInterfaceLayoutDirection {
        case .leftToRight: return left
        case .rightToLeft: return right
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(userInterfaceLayoutDirection)")
            return left
        }
    }
    
    
    /// The value of whichever edge inset is trailing in the current app's UI direction
    var trailing: CGFloat {
        switch userInterfaceLayoutDirection {
        case .leftToRight: return right
        case .rightToLeft: return left
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(userInterfaceLayoutDirection)")
            return right
        }
    }
}



#if !canImport(UIKit)
extension EdgeInsets: Equatable {}
#endif



// TODO: Move this to some other package
@inline(__always)
private var userInterfaceLayoutDirection: UserInterfaceLayoutDirection {
    #if canImport(UIKit)
    return UIApplication.shared.userInterfaceLayoutDirection
    #elseif canImport(AppKit)
    return NSApp.userInterfaceLayoutDirection
    #endif
}
