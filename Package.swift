// swift-tools-version:5.3
import PackageDescription


let version = "0.8.11"
let mediasoupChecksum = "9552a0a223b0963458fd9d331dac5aa9b3bf95054ac4f06585b01f7cbdb37293"
let webrtcChecksum = "20193eecf6ae8a90aea98978e20a6a67bad3d163c7af20870e3c474c9b076c90"


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
