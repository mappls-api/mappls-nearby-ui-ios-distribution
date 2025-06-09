// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsNearbyUI",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsNearbyUI",
            targets: ["MapplsNearbyUIWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.0.4"),
        .package(url: "https://github.com/mappls-api/mappls-api-kit-ios-distribution.git", from: "3.0.0"),
        .package(url: "https://github.com/mappls-api/mappls-ui-widget-ios-distribution.git", from: "2.0.0"),
        .package(url: "https://github.com/mappls-api/mappls-map-ios-distribution.git", from: "6.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsNearbyUI",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-nearby-ui/MapplsNearbyUI.xcframework-2.0.1.zip",
            checksum: "efbe46c5fa720e45553d2d98b71922e448eb0420d315046b78d26cd8943a921f"
        ),
        .target(
            name: "MapplsNearbyUIWrapper",
            dependencies: [
                "MapplsNearbyUI",
                .product(name: "MapplsAPICore", package: "mappls-api-core-ios-distribution"),
                .product(name: "MapplsAPIKit", package: "mappls-api-kit-ios-distribution"),
                .product(name: "MapplsUIWidgets", package: "mappls-ui-widget-ios-distribution"),
                .product(name: "MapplsMap", package: "mappls-map-ios-distribution")
            ]
        ),
    ]
)
