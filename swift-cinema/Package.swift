// swift-tools-version: 5.9
/// - Important: 스위프트 버전을 수정하지 마십시오

import PackageDescription

let package = Package(
    name: "swift-cinema",
    /// - Important: iOS 버전을 수정하지 마십시오
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "Cinema",
            type: .dynamic, // 라이브러리 타입을 수정하지 마십시오
            targets: ["CinemaUI", "Fetcher"]
        ),
    ],
    targets: [
        .target(
            name: "CinemaUI",
            dependencies: ["Fetcher", "Models"]
        ),
        .target(
            name: "Fetcher",
            dependencies: ["Models"]
        ),
        .target(
            name: "Models"
        ),
        .testTarget(
            name: "FetcherTests",
            dependencies: ["Fetcher", "Models"]
        )
    ]
)
