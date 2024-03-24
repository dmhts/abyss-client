// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
    name: "Client",
    platforms: [.iOS(.v15)],
    products: [
        .executable(name: "Client", targets: ["Main"]),
        .library(name: "ABIContractBreakerClient", targets: ["ABIContractBreakerClient"]),
    ],
    dependencies: [
        .package(
            url: "https://raw.githubusercontent.com/dmhts/abyss/main/braintree/braintree_ios/Package.git",
            exact: Version(6, 14, 0)
        ),
        .package(
            url: "git@github.com:dmhts/abi-contract-breaker.git",
            exact: Version(1, 0, 1)
        )
    ],
    targets: [
        .executableTarget(
            name: "Main",
            dependencies: [
                // "Swift510-ABIContractBreakerClient-1-0-0",
                "Evolution-ABIContractBreakerClient-1-0-0",
                // This has to be `exact: Version(1, 0, 1)` to introduce ABI incompatibility
                .product(name: "EvolutionEnabledABIContractBreaker", package: "abi-contract-breaker")
            ]
        ),
        .target(
            name: "ABIContractBreakerClient",
            dependencies: [
                .product(name: "Swift510ABIContractBreaker", package: "abi-contract-breaker")
            ]
        ),
        .binaryTarget(
            name: "Evolution-ABIContractBreakerClient-1-0-0",
            path: "Sources/Evolution-ABIContractBreakerClient-1-0-0/ABIContractBreakerClient.xcframework"
        ),
        .binaryTarget(
            name: "Swift510-ABIContractBreakerClient-1-0-0",
            path: "Sources/Evolution-ABIContractBreakerClient-1-0-0/ABIContractBreakerClient.xcframework"
        )
    ]
)
