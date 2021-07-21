//
//  EdgeInsets + FourSided.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-03-07.
//  Copyright © 2020 Ben Leggiero. All rights reserved.
//

#if canImport(SwiftUI)
    import SwiftUI

    public typealias NativeEdgeInsets = SwiftUI.EdgeInsets
    @available(watchOS 2.1, *)
    public typealias UserInterfaceLayoutDirection = SwiftUI.LayoutDirection
#elseif canImport(WatchKit)
    import WatchKit

    public typealias NativeEdgeInsets = UIEdgeInsets
    @available(watchOS 2.1, *)
    public typealias UserInterfaceLayoutDirection = WKInterfaceLayoutDirection
#elseif canImport(UIKit)
    import UIKit

    public typealias NativeEdgeInsets = UIEdgeInsets
    public typealias UserInterfaceLayoutDirection = UIUserInterfaceLayoutDirection
#elseif canImport(AppKit)
    import AppKit

    public typealias NativeEdgeInsets = NSEdgeInsets
    public typealias UserInterfaceLayoutDirection = NSUserInterfaceLayoutDirection
#endif



@available(watchOS 2.1, *)
extension NativeEdgeInsets: FourSidedAbsolute {
    
    #if canImport(SwiftUI)
    
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
    
    
    public var left: CGFloat {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight: return leading
        case .rightToLeft: return trailing
            
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            return leading
        }
    }
    
    
    public var right: CGFloat {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight: return trailing
        case .rightToLeft: return leading
            
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            return trailing
        }
    }
    
    
    #else
    
    
    @available(watchOS 2.1, *)
    public init(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) {
        self.init(top: top, left: left, bottom: bottom, right: right)
    }
    
    
    public init(top: CGFloat, trailing: CGFloat, bottom: CGFloat, leading: CGFloat) {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight:
            self.init(top: top, right: trailing, bottom: bottom, left: leading)
            
        case .rightToLeft:
        self.init(top: top, right: leading, bottom: bottom, left: trailing)
            
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            self.init(top: top, right: trailing, bottom: bottom, left: leading)
        }
    }
    
    #endif
}



#if !canImport(SwiftUI)
@available(watchOS 2.1, *)
public extension NativeEdgeInsets {
    /// The value of whichever edge inset is leading in the current app's UI direction
    var leading: CGFloat {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight: return left
        case .rightToLeft: return right
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            return left
        }
    }
    
    
    /// The value of whichever edge inset is trailing in the current app's UI direction
    var trailing: CGFloat {
        switch UserInterfaceLayoutDirection.current {
        case .leftToRight: return right
        case .rightToLeft: return left
        @unknown default:
            assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
            return right
        }
    }
}
#endif



#if !canImport(UIKit) && canImport(AppKit)
extension NSEdgeInsets: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.top == rhs.top
            && lhs.right == rhs.right
            && lhs.bottom == rhs.bottom
            && lhs.left == rhs.left
    }
}
#endif



@available(watchOS 2.1, *)
public extension UserInterfaceLayoutDirection {
    // TODO: Move this to some other package
    @inline(__always)
    static var current: UserInterfaceLayoutDirection {
        #if canImport(SwiftUI)
            #if canImport(UIKit)
                let legacyCurrent = UIApplication.shared.userInterfaceLayoutDirection
            #elseif canImport(AppKit)
                let legacyCurrent = NSApp?.userInterfaceLayoutDirection ?? .leftToRight
            #endif
            switch legacyCurrent {
            case .leftToRight: return .leftToRight
            case .rightToLeft: return .rightToLeft
            @unknown default:
                assertionFailure("Unknown user interface layout direction (will assume LTR): \(UserInterfaceLayoutDirection.current)")
                return .leftToRight
            }
        #elseif canImport(WatchKit)
            return WKInterfaceDevice.current().layoutDirection
        #elseif canImport(UIKit)
            return UIApplication.shared.userInterfaceLayoutDirection
        #elseif canImport(AppKit)
            return NSApp?.userInterfaceLayoutDirection ?? .leftToRight
        #endif
    }
}
