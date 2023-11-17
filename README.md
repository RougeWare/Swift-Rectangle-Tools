# Swift Rectangle Tools #

A set of Swift utilities for dealing with rectangles, including a way to generically build your own!

This package includes new types such as `IntRect` and `UIntPoint`, conveniences for doing math with various points in rectangles, centering and scaling, generic protocols to unify math across all rectangular types, conveniences for measuring and placing rectangles, and much more.

Who knew there was so much to be done with rectangles?



## Easy To Adopt

This library aims to never get in your way. Minimal arbitrary decisions, maximum flexibility.

For example, other frameworks might say that they help you find the distance from any `CGPoint` to another, but doesn't provide that functionality to any other type. 
This one doesn't care what types the two are, as long as thier `x` and `y` coordinates use the same type. That means if you want to measure the distance from some `CGPoint` to some custom 2D point-like structure which also uses `CGFlaot`s, this will happily let you do that with no fuss.



## Thoroughly Tested ##

Over 2,000 test assertions prove that this library works as it says it does



## Battle Hardened ##

This library was created for enterprise-scale applications, and is being used by multiple corporations in production today.



## SwiftUI ##

If you're using this with SwiftUI, you can also `import RectangleTools_SwiftUI` to gain SwiftUI-specific rectangle tools!
