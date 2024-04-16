// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenSSL",
    products: [
        .library(name: "OpenSSL", targets: ["OpenSSL"]),
    ],
    targets: [
        .target(name: "OpenSSL", dependencies: [
            "ssl",
        ]),
        .binaryTarget(
            name: "ssl",
            url: "https://github.com/tingv/openssl-spm/releases/download/storage.3.3.0/libssl.xcframework.zip",
            checksum: "30c648c6fbb5bc294c757823677b7a76ac31345ea89c5bc7868c0a05b0482f63"
        ),
    ]
)
