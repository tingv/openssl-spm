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
            url: "https://github.com/tingv/openssl-spm/releases/download//libssl.xcframework.zip",
            checksum: "85ebf4ae90827a4c99f4ed3a2150a1b8bc16a1cad162609ddbf9bbafa9003b5e"
        ),
    ]
)
