// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PoplinSDKTracker",
    platforms: [
        .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PoplinSDKTracker",
            targets: ["PoplinSDKTracker"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "SnowplowTracker", url: "https://github.com/snowplow/snowplow-objc-tracker", from: "2.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "PoplinSDKTracker",
            url: "https://github.com/poplindata/ios-tracker-spm/PoplinSDKTracker.xcframework.zip",
            checksum: "4b7f087bb7d826090edc051423616c01df84c7d83fe585b3d104464ae372301d"
        )
    ]
)
