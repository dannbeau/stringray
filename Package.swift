// swift-tools-version:4.2
import PackageDescription

let package = Package(
	name: "stringray",
	dependencies: [
		.package(url: "https://github.com/apple/swift-package-manager.git", from: "0.3.0"),
		.package(url: "https://github.com/jpsim/Yams.git", from: "1.0.1"),
		.package(url: "https://github.com/scottrhoyt/SwiftyTextTable.git", from: "0.5.0")
	],
	targets: [
		.target(
			name: "stringray",
			dependencies: [
				"Utility",
				"Yams",
				"SwiftyTextTable"
			]
		),
		.testTarget(
			name: "stringrayTests",
			dependencies: ["stringray"]),
		]
)
