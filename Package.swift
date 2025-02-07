// swift-tools-version:5.3
import PackageDescription


let version = "0.8.5"
let mediasoupChecksum = "a4a972f8da29a733ecea884f011cf7e6732351407cf7bb00b03d9ed7849b989a"
let webrtcChecksum = "10d41f55a4f0e6602a8cd4b22d4d6c12ff6a38faa1a7396d23a32f6cdf7fa184"


let package = Package(
	name: "Mediasoup-Client-Swift",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14)
	],
	products: [
		.library(
			name: "Mediasoup",
			targets: [
				"Mediasoup",
				"WebRTC"
			]
		)
	],
	dependencies: [
	],
	targets: [
		.binaryTarget(
			name: "Mediasoup",
			url: "https://github.com/viviedu/mediasoup-client-swift/releases/download/\(version)/Mediasoup.xcframework.zip",
			checksum: mediasoupChecksum
		),
		.binaryTarget(
			name: "WebRTC",
			url: "https://github.com/viviedu/mediasoup-client-swift/releases/download/\(version)/WebRTC.xcframework.zip",
			checksum: webrtcChecksum
		)
	]
)
