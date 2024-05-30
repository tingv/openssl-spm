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
            checksum: "7428c7ab3ff99c32a1eb6f0b1751da3d61368e1f7e28df31ac66386ae223fa09"
        ),
    ]
)
