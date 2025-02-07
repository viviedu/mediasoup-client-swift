// swift-tools-version:5.3
import PackageDescription


let version = "0.8.2"
let mediasoupChecksum = "ae0e8fb0a64259c93e7ae5f8554461ab3b81f88bf4807572ae3a074620ed3b04"
let webrtcChecksum = "923166a9b508af0529bd1d6d797ff5fa1fe3618d2f2444016422722ec2c780e9"


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
