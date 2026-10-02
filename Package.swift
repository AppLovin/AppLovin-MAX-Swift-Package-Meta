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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/facebook-adapter/AppLovinMediationFacebookAdapter-6.22.0.4.zip",
            checksum: "3ca79106c4a585cfae0dfdac895aab4e3509dfbe1cb8870fb77afa8435c59430"
        )
    ]
)
