// swift-tools-version: 5.10
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
            pkgConfig: "liblz4",
            providers: [
                .brew(["lz4"]), 
                .apt(["zlib1g-dev"])
            ])
    ],
    cxxLanguageStandard: .cxx17
)
