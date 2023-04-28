// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Caldera",
    products: [
        .library(
            name: "Caldera",
            targets: ["Caldera"]
        ),
        .executable(
            name: "AssetCatalogGenerator",
            targets: ["AssetCatalogGenerator"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Caldera",
            resources: [
                .process("Resources")
            ],
            plugins: [
                .plugin(name: "AssetCatalogBuilder")
            ]
        ),
        .testTarget(
            name: "CalderaTests",
            dependencies: ["Caldera"]
        ),
        .executableTarget(
            name: "AssetCatalogGenerator",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .plugin(
            name: "AssetCatalogBuilder",
            capability: .buildTool(),
            dependencies: ["AssetCatalogGenerator"]
        ),
        .testTarget(
            name: "AssetCatalogGeneratorTests",
            dependencies: ["AssetCatalogGenerator"],
            resources: [.process("Resources")]
        ),
    ]
)
