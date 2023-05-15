// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TopshotGraphQL",
    dependencies: [
        .package(
          url: "https://github.com/apollographql/apollo-ios.git",
          .upToNextMajor(from: "1.1.3")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "TopshotGraphQL",
            path: "Sources"),
    ]
)