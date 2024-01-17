// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Domain",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Domain",
            targets: ["Entities", "RepositoryProtocol", "UseCaseProtocol", "UseCases", "DomainTestHelpers"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Entities",
            dependencies: []
        ),
        .target(
            name: "RepositoryProtocol",
            dependencies: ["Entities"]
        ),
        .target(
            name: "UseCaseProtocol",
            dependencies: ["Entities"]
        ),
        .target(
            name: "UseCases",
            dependencies: [
                "UseCaseProtocol",
                "RepositoryProtocol"
            ]
        ),
        .target(
            name: "DomainTestHelpers",
            dependencies: [
                "Entities",
                "UseCaseProtocol",
                "RepositoryProtocol"
            ]
        ),
    ]
)
