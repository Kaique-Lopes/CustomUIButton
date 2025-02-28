// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CustomUIButton",
    products: [
        .library(
            name: "CustomUIButton",
            targets: ["CustomUIButton"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CustomUIButton",
            dependencies: [],
            path: "Sources",
            exclude: [],
            sources: nil,
            resources: [],
            publicHeadersPath: nil,
            cSettings: nil,
            cxxSettings: nil,
            swiftSettings: [
                .define("SWIFT_PACKAGE")
            ],
            linkerSettings: nil
        )
    ]
)
