//
//  EdgeInsets + FourSided.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-03-07.
//  Copyright © 2020 Ben Leggiero. All rights reserved.
//

#if canImport(WatchKit)
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
}



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



#if !canImport(UIKit) && canImport(AppKit)
extension NSEdgeInsets: Equatable {}
#endif



@available(watchOS 2.1, *)
public extension UserInterfaceLayoutDirection {
    // TODO: Move this to some other package
    @inline(__always)
    static var current: UserInterfaceLayoutDirection {
        #if canImport(WatchKit)
        return WKInterfaceDevice.current().layoutDirection
        #elseif canImport(UIKit)
        return UIApplication.shared.userInterfaceLayoutDirection
        #elseif canImport(AppKit)
        return NSApp?.userInterfaceLayoutDirection ?? .leftToRight
        #endif
    }
}
