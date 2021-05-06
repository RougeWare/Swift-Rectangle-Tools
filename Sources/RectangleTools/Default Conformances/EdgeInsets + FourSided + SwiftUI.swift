//
//  EdgeInsets + FourSided + SwiftUI.swift
//  
//
//  Created by Ben Leggiero on 2021-05-05.
//

import SwiftUI



@available(macOS 10.15, *)
@available(iOS 13, *)
@available(tvOS 13, *)
@available(watchOS 6, *)
extension EdgeInsets: FourSidedAbsolute {
    public init(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight:
            self.init(top: top, leading: left, bottom: bottom, trailing: right)
            
        case .rightToLeft:
            self.init(top: top, leading: right, bottom: bottom, trailing: left)
            
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            self.init(top: top, leading: left, bottom: bottom, trailing: right)
        }
    }
    
    
    public init(top: CGFloat, trailing: CGFloat, bottom: CGFloat, leading: CGFloat) {
        self.init(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
}



@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension EdgeInsets {
    /// The value of whichever edge inset is leading in the current app's UI direction
    var right: CGFloat {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight: return trailing
        case .rightToLeft: return leading
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            return trailing
        }
    }
    
    
    /// The value of whichever edge inset is trailing in the current app's UI direction
    var left: CGFloat {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight: return leading
        case .rightToLeft: return trailing
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            return leading
        }
    }
}
