// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SophiSDKTracker",
    platforms: [
        .iOS(.v13), .tvOS(.v14)
    ],
    products: [
        .library(
            name: "SophiSDKTracker",
            targets: ["SophiTracker"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "SophiTracker",
            path: "artifacts/SophiSDK.xcframework"
        ),
        .testTarget(
            name: "SophiSDKTrackerPackageTests",
            dependencies: ["SophiTracker"],
            path: "Tests/SophiSDKTrackerPackageTests")
    ]
)

