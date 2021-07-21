// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RectangleTools",
    
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "RectangleTools",
            targets: ["RectangleTools"]),
        .library(
            name: "RectangleTools_SwiftUI",
            targets: ["RectangleTools_SwiftUI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/RougeWare/Swift-MultiplicativeArithmetic.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "RectangleTools",
            dependencies: ["MultiplicativeArithmetic"]),
        .testTarget(
            name: "RectangleToolsTests",
            dependencies: ["RectangleTools"]),
        
        .target(
            name: "RectangleTools_SwiftUI",
            dependencies: ["RectangleTools"]),
        .testTarget(
            name: "RectangleTools_SwiftUI_Tests",
            dependencies: ["RectangleTools_SwiftUI"]),
    ]
)
