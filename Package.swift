// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
    name: "Client",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "Client", targets: ["Main"])
    ],
    dependencies: [
        .package(url: "https://raw.githubusercontent.com/dmhts/abyss/main/braintree/braintree_ios/Package.git", exact: Version(6, 14, 0))
    ],
    targets: [
        .target(
            name: "Main",
            dependencies: [
                .product(name: "BraintreeCore", package: "Package")
            ]
        )
    ]
)
