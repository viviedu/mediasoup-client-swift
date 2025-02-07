// swift-tools-version:5.3
import PackageDescription


let version = "0.8.6"
let mediasoupChecksum = "39756f27fc50d1a8982586dee75e3acadab548aa2151518712ee863ce04579ec"
let webrtcChecksum = "2f43fbc999d369ea1ab89a2d1a9cdfb67e94b4ab61978b2b5a1f55ca76bb32a4"


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
