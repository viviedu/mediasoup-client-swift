// swift-tools-version:5.3
import PackageDescription


let version = "0.8.10"
let mediasoupChecksum = "719903972a2389e1bdad16bfc7684e8594f123a5fe6af176fa777fd67a7df959"
let webrtcChecksum = "631124b4ff153a13713e60ce80055a6946300d7cf842a873fcfb274d08ec5f7d"


let package = Package(
	name: "Mediasoup-Client-Swift",
	platforms: [
		.iOS(.v17),
		.tvOS(.v17)
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
			url: "https://github.com/VLprojects/mediasoup-client-swift/releases/download/\(version)/Mediasoup.xcframework.zip",
			checksum: mediasoupChecksum
		),
		.binaryTarget(
			name: "WebRTC",
			url: "https://github.com/VLprojects/mediasoup-client-swift/releases/download/\(version)/WebRTC.xcframework.zip",
			checksum: webrtcChecksum
		)
	]
)
