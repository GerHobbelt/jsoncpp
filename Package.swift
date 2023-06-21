// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libjsoncpp",
    products: [
		.library(name: "libjsoncpp", type: .static, targets: ["jsoncpp"]),
		.library(name: "dylibjsoncpp", type: .dynamic, targets: ["jsoncpp"]),
    ],
    targets: [
        .target(
            name: "jsoncpp",
			path: "./",
			sources: [
				"src/lib_json/json_value.cpp",
				"src/lib_json/json_reader.cpp",
				"src/lib_json/json_writer.cpp",
			],
			publicHeadersPath: "include/",
			cSettings: [
				.headerSearchPath("src/lib_json"),
			]
		),
    ],
	cLanguageStandard: .gnu11,
	cxxLanguageStandard: .gnucxx20
)
