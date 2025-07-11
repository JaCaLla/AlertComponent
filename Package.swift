// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlertComponent",
    platforms: [
        .macOS(.v11),       // 👈 Minimum macOS version
        .iOS(.v14)          // Optional: add other platforms
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AlertComponent",
            targets: ["AlertComponent"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AlertComponent"),
        .testTarget(
            name: "AlertComponentTests",
            dependencies: ["AlertComponent"]
        ),
    ]
)
