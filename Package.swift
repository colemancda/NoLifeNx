// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "NoLifeNx",
    products: [
        .library(
            name: "NoLifeNx",
            targets: ["NoLifeNx"]
        ),
    ],
    targets: [
        .target(
            name: "NoLifeNx",
            dependencies: ["CLZ4"]
        ),
        .systemLibrary(
            name: "CLZ4",
            pkgConfig: "lz4",
            providers: [
                .brew(["lz4"]), 
                .apt(["liblz4-dev"])
            ]
        )
    ],
    cxxLanguageStandard: .cxx17
)
