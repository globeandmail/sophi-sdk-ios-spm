// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SophiSDKTracker",
    platforms: [
        .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        .library(
            name: "SophiSDK",
            targets: ["SophiSDKTracker"]),
    ],
    dependencies: [
        .package(name: "SnowplowTracker", url: "https://github.com/snowplow/snowplow-objc-tracker", from: "2.2.2")
    ],
    targets: [
        .binaryTarget(
            name: "SophiSDKTracker",
            path: "SophiSDK.xcframework"
        ),
        .target(name: "SophiSDKTrackerTargets",
                       dependencies: [
                           .target(name: "SophiSDKTracker"),
                           .product(name: "SnowplowTracker", package: "SnowplowTracker")
                       ],
                       path: "Sources")
    ]
)

