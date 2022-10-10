// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SyntaxMapBuilder",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .executable(name: "SyntaxMapBuilder", targets: ["SyntaxMapBuilder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams", from: Version(5, 0, 0)),
    ],
    targets: [
        .executableTarget(name: "SyntaxMapBuilder", dependencies: ["Yams"]),
        .testTarget(name: "SyntaxMapBuilderTests", dependencies: ["SyntaxMapBuilder"]),
    ],
    swiftLanguageVersions: [
        .v5,
    ]
)
