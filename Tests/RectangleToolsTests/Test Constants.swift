//
//  Test Constants.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2020-01-03.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import Foundation
import CoreGraphics
import RectangleTools



// MARK: - Test Sizes

enum TestSizes {
        
    /// ```
    ///  ↑
    ///  │
    /// 8┢━━━━━┓
    /// 6┃     ┃
    /// 4┃     ┃
    /// 2┃     ┃
    /// ←╄━━━━━┹───→
    ///  ↓  2  4
    /// ```
    static let uIntSize__4_8 = UIntSize(width: 4, height: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4┢━━━━━━━━┓
    /// 3┃        ┃
    /// 2┃        ┃
    /// 1┃        ┃
    /// ←╄━━━━━━━━┹───→
    ///  ↓  1  2  3
    /// ```
    static let uIntSize__3_4 = UIntSize(width: 3, height: 4)
    
        
    /// ```
    ///  ↑
    ///  │
    /// 8┢━━━━━┓
    /// 6┃     ┃
    /// 4┃     ┃
    /// 2┃     ┃
    /// ←╄━━━━━┹───→
    ///  ↓  2  4
    /// ```
    static let intSize__4_8 = IntSize(width: 4, height: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4┢━━━━━━━━┓
    /// 3┃        ┃
    /// 2┃        ┃
    /// 1┃        ┃
    /// ←╄━━━━━━━━┹───→
    ///  ↓  1  2  3
    /// ```
    static let intSize__3_4 = IntSize(width: 3, height: 4)
    
    /// ```
    ///              ↑
    ///              │
    ///     ┏━━━━━━━━┪4
    ///     ┃        ┃3
    ///     ┃        ┃2
    ///     ┃        ┃1
    /// ←───┗━━━━━━━━╃→
    ///    -3 -2 -1  ↓
    /// ```
    static let intSize__n3_4 = IntSize(width: -3, height: 4)
    
    /// ```
    ///   ↑  1  2  3
    ///  ←╆━━━━━━━━┱───→
    /// -1┃        ┃
    /// -2┃        ┃
    /// -3┃        ┃
    /// -4┡━━━━━━━━┛
    ///   │
    ///   ↓
    /// ```
    static let intSize__3_n4 = IntSize(width: 3, height: -4)
    
        
    /// ```
    ///  ↑
    ///  │
    /// 8┢━━━━━┓
    /// 6┃     ┃
    /// 4┃     ┃
    /// 2┃     ┃
    /// ←╄━━━━━┹───→
    ///  ↓  2  4
    /// ```
    static let cgSize__4_8 = CGSize(width: 4, height: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4┢━━━━━━━━┓
    /// 3┃        ┃
    /// 2┃        ┃
    /// 1┃        ┃
    /// ←╄━━━━━━━━┹───→
    ///  ↓  1  2  3
    /// ```
    static let cgSize__3_4 = CGSize(width: 3, height: 4)
    
    /// ```
    ///              ↑
    ///              │
    ///     ┏━━━━━━━━┪4
    ///     ┃        ┃3
    ///     ┃        ┃2
    ///     ┃        ┃1
    /// ←───┗━━━━━━━━╃→
    ///    -3 -2 -1  ↓
    /// ```
    static let cgSize__n3_4 = CGSize(width: -3, height: 4)
    
    /// ```
    ///   ↑  1  2  3
    ///  ←╆━━━━━━━━┱───→
    /// -1┃        ┃
    /// -2┃        ┃
    /// -3┃        ┃
    /// -4┡━━━━━━━━┛
    ///   │
    ///   ↓
    /// ```
    static let cgSize__3_n4 = CGSize(width: 3, height: -4)
    
    
    /// ```
    ///  ↑
    ///  │
    /// 8┢━━━━━┓
    /// 6┃     ┃
    /// 4┃     ┃
    /// 2┃     ┃
    /// ←╄━━━━━┹───→
    ///  ↓  2  4
    /// ```
    static let decimalSize__4_8 = DecimalSize(width: 4, height: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4┢━━━━━━━━┓
    /// 3┃        ┃
    /// 2┃        ┃
    /// 1┃        ┃
    /// ←╄━━━━━━━━┹───→
    ///  ↓  1  2  3
    /// ```
    static let decimalSize__3_4 = DecimalSize(width: 3, height: 4)
    
    /// ```
    ///              ↑
    ///              │
    ///     ┏━━━━━━━━┪4
    ///     ┃        ┃3
    ///     ┃        ┃2
    ///     ┃        ┃1
    /// ←───┗━━━━━━━━╃→
    ///    -3 -2 -1  ↓
    /// ```
    static let decimalSize__n3_4 = DecimalSize(width: -3, height: 4)
    
    /// ```
    ///   ↑  1  2  3
    ///  ←╆━━━━━━━━┱───→
    /// -1┃        ┃
    /// -2┃        ┃
    /// -3┃        ┃
    /// -4┡━━━━━━━━┛
    ///   │
    ///   ↓
    /// ```
    static let decimalSize__3_n4 = DecimalSize(width: 3, height: -4)
}



// MARK: - Test Points

enum TestPoints {
        
    /// ```
    ///  ↑
    ///  │
    /// 8│     ●
    /// 6│
    /// 4│
    /// 2│
    /// ←┼─────────→
    ///  ↓  2  4
    /// ```
    static let intPoint__4_8 = IntPoint(x: 4, y: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4│        ●
    /// 3│
    /// 2│
    /// 1│
    /// ←┼────────────→
    ///  ↓  1  2  3
    /// ```
    static let intPoint__3_4 = IntPoint(x: 3, y: 4)
    
    /// ```
    ///              ↑
    ///              │
    ///     ●        │4
    ///              │3
    ///              │2
    ///              │1
    /// ←────────────┼→
    ///    -3 -2 -1  ↓
    /// ```
    static let intPoint__n3_4 = IntPoint(x: -3, y: 4)
    
    /// ```
    ///   ↑  1  2  3
    ///  ←┼────────────→
    /// -1│
    /// -2│
    /// -3│
    /// -4│        ●
    ///   │
    ///   ↓
    /// ```
    static let intPoint__3_n4 = IntPoint(x: 3, y: -4)
    
    
    /// ```
    ///  ↑
    ///  │
    /// 8│     ●
    /// 6│
    /// 4│
    /// 2│
    /// ←┼─────────→
    ///  ↓  2  4
    /// ```
    static let uIntPoint__4_8 = UIntPoint(x: 4, y: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4│        ●
    /// 3│
    /// 2│
    /// 1│
    /// ←┼────────────→
    ///  ↓  1  2  3
    /// ```
    static let uIntPoint__3_4 = UIntPoint(x: 3, y: 4)
    
        
    /// ```
    ///  ↑
    ///  │
    /// 8│     ●
    /// 6│
    /// 4│
    /// 2│
    /// ←┼─────────→
    ///  ↓  2  4
    /// ```
    static let cgPoint__4_8 = CGPoint(x: 4, y: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4│        ●
    /// 3│
    /// 2│
    /// 1│
    /// ←┼────────────→
    ///  ↓  1  2  3
    /// ```
    static let cgPoint__3_4 = CGPoint(x: 3, y: 4)
    
    /// ```
    ///              ↑
    ///              │
    ///     ●        │4
    ///              │3
    ///              │2
    ///              │1
    /// ←────────────┼→
    ///    -3 -2 -1  ↓
    /// ```
    static let cgPoint__n3_4 = CGPoint(x: -3, y: 4)
    
    /// ```
    ///   ↑  1  2  3
    ///  ←┼────────────→
    /// -1│
    /// -2│
    /// -3│
    /// -4│        ●
    ///   │
    ///   ↓
    /// ```
    static let cgPoint__3_n4 = CGPoint(x: 3, y: -4)
    
    
    /// ```
    ///  ↑
    ///  │
    /// 8│     ●
    /// 6│
    /// 4│
    /// 2│
    /// ←┼─────────→
    ///  ↓  2  4
    /// ```
    static let decimalPoint__4_8 = DecimalPoint(x: 4, y: 8)
    
    /// ```
    ///  ↑
    ///  │
    /// 4│        ●
    /// 3│
    /// 2│
    /// 1│
    /// ←┼────────────→
    ///  ↓  1  2  3
    /// ```
    static let decimalPoint__3_4 = DecimalPoint(x: 3, y: 4)
    
    /// ```
    ///              ↑
    ///              │
    ///     ●        │4
    ///              │3
    ///              │2
    ///              │1
    /// ←────────────┼→
    ///    -3 -2 -1  ↓
    /// ```
    static let decimalPoint__n3_4 = DecimalPoint(x: -3, y: 4)
    
    /// ```
    ///   ↑  1  2  3
    ///  ←┼────────────→
    /// -1│
    /// -2│
    /// -3│
    /// -4│        ●
    ///   │
    ///   ↓
    /// ```
    static let decimalPoint__3_n4 = DecimalPoint(x: 3, y: -4)
}
