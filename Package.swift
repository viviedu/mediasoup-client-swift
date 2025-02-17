// swift-tools-version:5.3
import PackageDescription


let version = "0.8.8"
let mediasoupChecksum = "024222cce661199cdb2f6b9049926e321360f60a55067f703a479dbc5f91cc85"
let webrtcChecksum = "d475db68f32b0409958974099443d390302baa770c7d25b991b5ac2f92b92cbf"


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
