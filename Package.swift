// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationFacebookAdapter",
    platforms: [.iOS(.v15)],
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/facebook-adapter/AppLovinMediationFacebookAdapter-6.22.0.2.zip",
            checksum: "24c3249b3c0fc39f7497a35aca2bb04dc38166327cf1dec3234a5a4a54ff8100"
        )
    ]
)
