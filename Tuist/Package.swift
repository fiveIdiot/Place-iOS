// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PlacePackage",
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.5.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/Moya/Moya.git", from: "15.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.0.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxFlow.git", from: "2.10.0")
    ]
)
