// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PalindromeKit",
  products: [
    .library(
      name: "PalindromeKit",
      targets: ["PalindromeKit"]),
  ],
  targets: [
    .target(name: "PalindromeKit"),
    .testTarget(name: "PalindromeKitTests", dependencies: ["PalindromeKit"])
  ]
)
