// swift-tools-version:5.3
import PackageDescription


let version = "0.8.9"
let mediasoupChecksum = "47f50f50b84338bce4bc5c8478e74695f4a6898b7828c1be726c25bdfbacdcf5"
let webrtcChecksum = "9c636e2bd5f325fe0afa254bbaac1fad367984a3323905e04a44c316d01ca727"


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
