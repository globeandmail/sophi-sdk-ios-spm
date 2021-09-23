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
            name: "SophiSDKTracker",
            targets: ["SophiSDKTarget"]),
    ],
    targets: [
        .binaryTarget(
            name: "SophiSDKTarget",
            path: "SophiSDK.xcframework"
        ),
    ]
)

