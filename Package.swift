// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Speakeasy",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Speakeasy",
            targets: ["Speakeasy"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Speakeasy",
            dependencies: []
        )
  ]
)
