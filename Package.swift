// swift-tools-version:5.3
import PackageDescription


let version = "0.8.7"
let mediasoupChecksum = "4a55df2d3cf6e7d0fb590e681ad59ccbb0626cb12f18dc776808fab8d1499726"
let webrtcChecksum = "9e172c34ec2aef2557865c6fea0c3175c4a7b74b4a9e108c0ee849633eae29e4"


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
