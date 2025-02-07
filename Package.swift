// swift-tools-version:5.3
import PackageDescription


let version = "0.8.3"
let mediasoupChecksum = "cff507adf1908939dd3c97fb501c7220f0a770e1faabe08e4295e9445680e186"
let webrtcChecksum = "630f9b6c7b2703024f4187f9ab9da3f23a44a862a6252cfa75cbb713fa7915f5"


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
