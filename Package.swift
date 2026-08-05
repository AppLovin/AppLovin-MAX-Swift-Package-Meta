// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationFacebookAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationFacebookAdapter",
            targets: ["AppLovinMediationFacebookAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.22.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationFacebookAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationFacebookAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationFacebookAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/facebook-adapter/AppLovinMediationFacebookAdapter-6.22.0.1.zip",
            checksum: "f7979324736211bd55dca520eea92d8f8f008823e9d17dd9daaa193658b5ad94"
        )
    ]
)
