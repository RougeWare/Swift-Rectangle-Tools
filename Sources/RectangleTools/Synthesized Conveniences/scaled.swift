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
    /// For squares, this is identical to `.fill`.
    ///
    /// - When scaling direction is `.down`, then this might result in zero or two sides touching parent sides.
    /// - When scaling direction is `.upOrDown`, then two or four sides will touch parent sides.
    ///
    ///
    /// `ScaleDirection.down`:
    /// ```
    /// Parent:                   6×6               8×8
    ///            5×5       ┌╶╶╶╶╶ ╴╴╴╴╴┐   ┌╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┐
    ///        ┌╶╶╶╶╶╴╴╴╴┐   ┏━━━━━━━━━━━┓   ╎                ╎
    ///        ┏━━━━━━━━━┓   ┃           ┃   ╎ ┏━━━━━━━━━━━━┓ ╎
    ///        ┃         ┃   ┃           ┃   ╎ ┃            ┃ ╎
    ///        ┗━━━━━━━━━┛   ┗━━━━━━━━━━━┛   ╎ ┃            ┃ ╎
    ///        └╶╶╶╶╴╴╴╴╴┘   └╶╶╶╶╶╶ ╴╴╴╴┘   ╎ ┗━━━━━━━━━━━━┛ ╎
    /// Child: 6×3 → 5×2.5     6×3 → 6×3     ╎                ╎
    ///                                      └╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┘
    ///                                          6×3 → 6×3
    ///
    ///          5×5            6×6                8×8
    ///     ┌╶╶┏━━━━┓╴╴┐   ┌╶╶┏━━━━━┓╴╴┐   ┌╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┐
    ///     ╎  ┃    ┃  ╎   ╎  ┃     ┃  ╎   ╎     ┏━━━━━┓     ╎
    ///     ╎  ┃    ┃  ╎   ╎  ┃     ┃  ╎   ╎     ┃     ┃     ╎
    ///     ╎  ┃    ┃  ╎   ╎  ┃     ┃  ╎   ╎     ┃     ┃     ╎
    ///     └╶╶┗━━━━┛╴╴┘   ╎  ┃     ┃  ╎   ╎     ┃     ┃     ╎
    ///     3×6 → 2.5×5    └╶╶┗━━━━━┛╴╴┘   ╎     ┃     ┃     ╎
    ///                     3×6 → 3×6      ╎     ┗━━━━━┛     ╎
    ///                                    └╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┘
    ///                                         3×6 → 3×6
    /// ```
    ///
    ///
    /// `ScaleDirection.upOrDown`:
    /// ```
    /// Parent:                   6×6                8×8
    ///            5×5       ┌╶╶╶╶╶ ╴╴╴╴╴┐   ┌╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴┐
    ///        ┌╶╶╶╶╶╴╴╴╴┐   ┏━━━━━━━━━━━┓   ╎                ╎
    ///        ┏━━━━━━━━━┓   ┃           ┃   ┏━━━━━━━━━━━━━━━━┓
    ///        ┃         ┃   ┃           ┃   ┃                ┃
    ///        ┗━━━━━━━━━┛   ┗━━━━━━━━━━━┛   ┃                ┃
    ///        └╶╶╶╶╴╴╴╴╴┘   └╶╶╶╶╶╶ ╴╴╴╴┘   ┃                ┃
    /// Child: 6×3 → 5×2.5     6×3 → 6×3     ┗━━━━━━━━━━━━━━━━┛
    ///                                      ╎                ╎
    ///                                      └╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┘
    ///                                          6×3 → 8×4
    ///
    ///         5×5              6×6                 8×8
    ///     ┌╶╶┏━━━━┓╴╴┐   ┌╶╶╶┏━━━━━┓╴╴╴┐   ┌╶╶╶╶┏━━━━━━━┓╴╴╴╴┐
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     └╶╶┗━━━━┛╴╴┘   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     3×6 → 2.5×5    └╶╶╶┗━━━━━┛╴╴╴┘   ╎    ┃       ┃    ╎
    ///                     3×6 → 3×6        ╎    ┃       ┃    ╎
    ///                                      └╶╶╶╶┗━━━━━━━┛╴╴╴╴┘
    ///                                           3×6 → 4×8
    /// ```
    case fit
    
    
    /// Keep the aspect ratio, and change the size as neccessary so that it completely fills the parent, clipping two sides if necessary
    ///
    /// For squares, this is identical to `.fit`.
    ///
    /// - When scaling direction is `.down`, then this might result in zero, two, or four sides touching or passing parent sides.
    /// - When scaling direction is `.upOrDown`, then all four sides will touch or pass parent sides.
    ///
    ///
    /// `ScaleDirection.down`:
    /// ```
    /// Parent:                        6×6
    ///            4×4        ┏━━━━┯━━━━━━━━━━━┯━━━━┓
    ///      ┏━━┯━━━━━━┯━━┓   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┗━━┷━━━━━━┷━━┛   ┃    ╎           ╎    ┃
    /// Child: 12×6 → 8×4     ┗━━━━┷━━━━━━━━━━━┷━━━━┛
    ///                             12×6 → 12×6
    ///                8×8
    ///          ┌╶╶╶╶╶╶ ╴╴╴╴╴╴╴┐
    ///      ┏━━━┯━━━━━━━━━━━━━━┯━━━┓
    ///      ┃   ╎              ╎   ┃
    ///      ┃   ╎              ╎   ┃
    ///      ┃   ╎              ╎   ┃
    ///      ┃   ╎              ╎   ┃
    ///      ┗━━━┷━━━━━━━━━━━━━━┷━━━┛
    ///          └╶╶╶╶╶╶ ╴╴╴╴╴╴╴┘
    ///            12×6 → 12×6
    ///
    ///                     6×6                8×8
    ///               ┏━━━━━━━━━━━━┓     ┏━━━━━━━━━━━━┓
    ///      4×4      ┃            ┃     ┃            ┃
    ///    ┏━━━━━━┓   ┃            ┃   ┌╶┠╶╶╶╶╶╶ ╴╴╴╴╴┨╴┐
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ╎ ┃            ┃ ╎
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┃      ┃   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┃      ┃   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ╎ ┃            ┃ ╎
    ///    ┗━━━━━━┛   ┃            ┃   └╶┠╶╶╶╶╶╶ ╴╴╴╴╴┨╴┘
    ///   6×12 → 4×8  ┃            ┃     ┃            ┃
    ///               ┗━━━━━━━━━━━━┛     ┗━━━━━━━━━━━━┛
    ///                6×12 → 6×12        6×12 → 6×12
    /// ```
    ///
    /// `ScaleDirection.upOrDown`:
    /// ```
    /// Parent:                        6×6
    ///            4×4        ┏━━━━┯━━━━━━━━━━━┯━━━━┓
    ///      ┏━━┯━━━━━━┯━━┓   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┗━━┷━━━━━━┷━━┛   ┃    ╎           ╎    ┃
    /// Child: 12×6 → 8×4     ┗━━━━┷━━━━━━━━━━━┷━━━━┛
    ///                             12×6 → 12×6
    ///                     8×8
    ///      ┏━━━━━━┯━━━━━━━━━━━━━━━━┯━━━━━━┓
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┗━━━━━━┷━━━━━━━━━━━━━━━━┷━━━━━━┛
    ///                 12×6 → 16×8
    ///                                       8×8
    ///                                ┏━━━━━━━━━━━━━━━━┓
    ///                    6×6         ┃                ┃
    ///               ┏━━━━━━━━━━━━┓   ┃                ┃
    ///      4×4      ┃            ┃   ┃                ┃
    ///    ┏━━━━━━┓   ┃            ┃   ┠╶╶╶╶╶╶╶╶╶╶ ╴╴╴╴╴┨
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ┃                ┃
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ┃                ┃
    ///    ┃      ┃   ┃            ┃   ┃                ┃
    ///    ┃      ┃   ┃            ┃   ┃                ┃
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ┃                ┃
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ┃                ┃
    ///    ┗━━━━━━┛   ┃            ┃   ┠╶╶╶╶╶╶╶╶╶╶ ╴╴╴╴╴┨
    ///   6×12 → 4×8  ┃            ┃   ┃                ┃
    ///               ┗━━━━━━━━━━━━┛   ┃                ┃
    ///                6×12 → 6×12     ┃                ┃
    ///                                ┗━━━━━━━━━━━━━━━━┛
    ///                                   6×12 → 8×16
    /// ```
    case fill
    
    
    /// Keep the aspect ratio, and change the size as necessary so that its height matches the parent, clipping the horizontal sides if necessary.
    ///
    /// - When scaling direction is `.down`, then this might result in zero, the vertical, or all four sides touching or passing parent sides.
    /// - When scaling direction is `.upOrDown`, then the vertical or all four sides will touch parent sides.
    ///
    /// `ScaleDirection.down`:
    /// ```
    /// Parent:                        6×6
    ///            4×4        ┏━━━━┯━━━━━━━━━━━┯━━━━┓
    ///      ┏━━┯━━━━━━┯━━┓   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┗━━┷━━━━━━┷━━┛   ┃    ╎           ╎    ┃
    /// Child: 12×6 → 8×4     ┗━━━━┷━━━━━━━━━━━┷━━━━┛
    ///                             12×6 → 12×6
    ///                8×8
    ///          ┌╶╶╶╶╶╶ ╴╴╴╴╴╴╴┐
    ///      ┏━━━┯━━━━━━━━━━━━━━┯━━━┓
    ///      ┃   ╎              ╎   ┃
    ///      ┃   ╎              ╎   ┃
    ///      ┃   ╎              ╎   ┃
    ///      ┃   ╎              ╎   ┃
    ///      ┗━━━┷━━━━━━━━━━━━━━┷━━━┛
    ///          └╶╶╶╶╶╶ ╴╴╴╴╴╴╴┘
    ///            12×6 → 12×6
    ///
    /// Parent: 5×5              6×6                 8×8
    ///     ┌╶╶┏━━━━┓╴╴┐   ┌───┏━━━━━┓╴╴╴┐   ┌╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┐
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎     ┏━━━━━┓     ╎
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎     ┃     ┃     ╎
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎     ┃     ┃     ╎
    ///     └╶╶┗━━━━┛╴╴┘   ╎   ┃     ┃   ╎   ╎     ┃     ┃     ╎
    ///     3×6 → 2.5×5    └╶╶╶┗━━━━━┛╴╴╴┘   ╎     ┃     ┃     ╎
    ///                     3×6 → 3×6        ╎     ┗━━━━━┛     ╎
    ///                                      └╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┘
    ///                                          3×6 → 3×6
    /// ```
    ///
    ///
    /// `ScaleDirection.upOrDown`:
    /// ```
    /// Parent:                        6×6
    ///            4×4        ┏━━━━┯━━━━━━━━━━━┯━━━━┓
    ///      ┏━━┯━━━━━━┯━━┓   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┃  ╎      ╎  ┃   ┃    ╎           ╎    ┃
    ///      ┗━━┷━━━━━━┷━━┛   ┃    ╎           ╎    ┃
    /// Child: 12×6 → 8×4     ┗━━━━┷━━━━━━━━━━━┷━━━━┛
    ///                             12×6 → 12×6
    ///                     8×8
    ///      ┏━━━━━━┯━━━━━━━━━━━━━━━━┯━━━━━━┓
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┃      ╎                ╎      ┃
    ///      ┗━━━━━━┷━━━━━━━━━━━━━━━━┷━━━━━━┛
    ///                 12×6 → 16×8
    ///
    ///         5×5              6×6                 8×8
    ///     ┌╶╶┏━━━━┓╴╴┐   ┌╶╶╶┏━━━━━┓╴╴╴┐   ┌╶╶╶╶┏━━━━━━━┓╴╴╴╴┐
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     ╎  ┃    ┃  ╎   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     └╶╶┗━━━━┛╴╴┘   ╎   ┃     ┃   ╎   ╎    ┃       ┃    ╎
    ///     3×6 → 2.5×5    └╶╶╶┗━━━━━┛╴╴╴┘   ╎    ┃       ┃    ╎
    ///                     3×6 → 3×6        ╎    ┃       ┃    ╎
    ///                                      └╶╶╶╶┗━━━━━━━┛╴╴╴╴┘
    ///                                          3×6 → 4×8
    /// ```
    case matchHeight
    
    
    /// Keep the aspect ratio, and change the size as necessary so that its width matches the parent, clipping the vertical sides if necessary.
    ///
    /// - When scaling direction is `.down`, then this might result in zero, the horizontal, or all four sides touching or passing parent sides.
    /// - When scaling direction is `.upOrDown`, then the horizontal or all four sides will touch parent sides.
    ///
    /// `ScaleDirection.down`:
    /// ```
    /// Parent:                   6×6               8×8
    ///            5×5       ┌╶╶╶╶╶ ╴╴╴╴╴┐   ┌╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┐
    ///        ┌╶╶╶╶╶╴╴╴╴┐   ┏━━━━━━━━━━━┓   ╎                ╎
    ///        ┏━━━━━━━━━┓   ┃           ┃   ╎ ┏━━━━━━━━━━━━┓ ╎
    ///        ┃         ┃   ┃           ┃   ╎ ┃            ┃ ╎
    ///        ┗━━━━━━━━━┛   ┗━━━━━━━━━━━┛   ╎ ┃            ┃ ╎
    ///        └╶╶╶╶╴╴╴╴╴┘   └╶╶╶╶╶╶ ╴╴╴╴┘   ╎ ┗━━━━━━━━━━━━┛ ╎
    /// Child: 6×3 → 5×2.5     6×3 → 6×3     ╎                ╎
    ///                                      └╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┘
    ///                                          6×3 → 6×3
    ///
    ///                     6×6                8×8
    ///               ┏━━━━━━━━━━━━┓     ┏━━━━━━━━━━━━┓
    ///      4×4      ┃            ┃     ┃            ┃
    ///    ┏━━━━━━┓   ┃            ┃   ┌╶┠╶╶╶╶╶╶ ╴╴╴╴╴┨╴┐
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ╎ ┃            ┃ ╎
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┃      ┃   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┃      ┃   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ╎ ┃            ┃ ╎
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ╎ ┃            ┃ ╎
    ///    ┗━━━━━━┛   ┃            ┃   └╶┠╶╶╶╶╶╶ ╴╴╴╴╴┨╴┘
    ///   6×12 → 4×8  ┃            ┃     ┃            ┃
    ///               ┗━━━━━━━━━━━━┛     ┗━━━━━━━━━━━━┛
    ///                6×12 → 6×12        6×12 → 6×12
    /// ```
    ///
    ///
    /// `ScaleDirection.upOrDown`:
    /// ```
    /// Parent:                   6×6                8×8
    ///            5×5       ┌╶╶╶╶╶ ╴╴╴╴╴┐   ┌╶╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴┐
    ///        ┌╶╶╶╶╶╴╴╴╴┐   ┏━━━━━━━━━━━┓   ╎                ╎
    ///        ┏━━━━━━━━━┓   ┃           ┃   ┏━━━━━━━━━━━━━━━━┓
    ///        ┃         ┃   ┃           ┃   ┃                ┃
    ///        ┗━━━━━━━━━┛   ┗━━━━━━━━━━━┛   ┃                ┃
    ///        └╶╶╶╶╴╴╴╴╴┘   └╶╶╶╶╶╶ ╴╴╴╴┘   ┃                ┃
    /// Child: 6×3 → 5×2.5     6×3 → 6×3     ┗━━━━━━━━━━━━━━━━┛
    ///                                      ╎                ╎
    ///                                      └╶╶╶╶╶╶╶ ╴╴╴╴╴╴╴╴┘
    ///                                          6×3 → 8×4
    ///
    ///                                       8×8
    ///                                ┏━━━━━━━━━━━━━━━━┓
    ///                    6×6         ┃                ┃
    ///               ┏━━━━━━━━━━━━┓   ┃                ┃
    ///      4×4      ┃            ┃   ┃                ┃
    ///    ┏━━━━━━┓   ┃            ┃   ┠╶╶╶╶╶╶╶╶╶╶ ╴╴╴╴╴┨
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ┃                ┃
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ┃                ┃
    ///    ┃      ┃   ┃            ┃   ┃                ┃
    ///    ┃      ┃   ┃            ┃   ┃                ┃
    ///    ┠╶╶╶╴╴╴┨   ┃            ┃   ┃                ┃
    ///    ┃      ┃   ┠╶╶╶╶╶╶ ╴╴╴╴╴┨   ┃                ┃
    ///    ┗━━━━━━┛   ┃            ┃   ┠╶╶╶╶╶╶╶╶╶╶ ╴╴╴╴╴┨
    ///   6×12 → 4×8  ┃            ┃   ┃                ┃
    ///               ┗━━━━━━━━━━━━┛   ┃                ┃
    ///                6×12 → 6×12     ┃                ┃
    ///                                ┗━━━━━━━━━━━━━━━━┛
    ///                                   6×12 → 8×16
    /// ```
    case matchWidth
    
    
    /// Discard the aspect ratio, and simply set the size to be the same as the parent's
    case stretch
}



/// A method by which one rectangular object can be scaled within another
public enum ScaleDirection {
    
    /// Keep the target object the same size, or scale it down within another
    case down
    
    /// Allow the target object to scale up or down within another
    case upOrDown
}



public extension TwoDimensional
where Length: MultiplicativeArithmetic,
      Length: AdditiveArithmetic,
      Length: Comparable,
      Length: ExpressibleByIntegerLiteral
{
    /// Scales this within the given parent, using the given scaling method
    ///
    /// - Parameters:
    ///    - parent:    The parent within which to scale this
    ///    - method:    The method by which to perform the scaling. The detailed ways in which these work are documented on each method
    ///    - direction: _optional_ - Which direction to scale this. Defaults to `.down`
    ///
    /// - Returns: A scaled version of this, relative to the given parent
    func scaled<Other>(within parent: Other, method: ScaleMethod, direction: ScaleDirection = .down) -> Self
    where Other: TwoDimensional,
          Other.Length == Self.Length
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
            switch direction {
            case .down:
                if parent.measurementY > self.measurementY {
                    // If we are only scaling the height down, and the parent's height is taller than this height,
                    // then return this instead of scaling up.
                    return self
                }
                else {
                    fallthrough
                }
                
            case .upOrDown:
                return .init(
                    measurementX: self.aspectRatio() * parent.measurementY,
                    measurementY: parent.measurementY)
            }
        }
        
        
        func scaleToMatchWidth() -> Self {
            switch direction {
            case .down:
                if parent.measurementX > self.measurementX {
                    // If we are only scaling the width down, and the parent's width is wider than this width,
                    // then return this instead of scaling up.
                    return self
                }
                else {
                    fallthrough
                }
                
            case .upOrDown:
                return .init(
                    measurementX: parent.measurementX,
                    measurementY: parent.measurementX / self.aspectRatio())
            }
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



public extension Rectangle
where Length: MultiplicativeArithmetic,
      Length: AdditiveArithmetic,
      Length: Comparable,
      Length: ExpressibleByIntegerLiteral
{
    
    /// Scales this rectangle within the given parent, using the given scaling method
    ///
    /// - Parameters:
    ///    - parent:    The parent rectangle within which to scale this rectangle
    ///    - method:    The method by which to perform the scaling. The detailed ways in which these work are documented on each method
    ///    - direction: _optional_ - Which direction to scale this rectangle. Defaults to `.down`
    ///
    /// - Returns: A scaled version of this rectangle, relative to the given parent
    func scaled<Other>(within parent: Other, method: ScaleMethod, direction: ScaleDirection = .down) -> Self
    where Other: Rectangle,
          Other.Length == Self.Length
    {
        Self.init(
            origin: .zero,
            size: size.scaled(within: parent.size, method: method, direction: direction)
        )
            .centered(within: parent)
    }
    
    
    /// Returns a version of this rectangle which is centered within the given other rectangle, so that their `.center` values are the same
    ///
    /// - Returns: This rectangle, centered within the given other one
    func centered<Other>(within other: Other) -> Self
    where Other: Rectangle,
          Other.Length == Self.Length
    {
        Self.init(
            origin: .init(x: other.midX - (self.width / 2),
                          y: other.midY - (self.height / 2)),
            size: self.size)
    }
}
