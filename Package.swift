// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "CrunchyBlog",
  platforms: [.macOS(.v12)],
  products: [
    .executable(
      name: "CrunchyBlog",
      targets: ["CrunchyBlog"]
    )
  ],
  dependencies: [
    .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
    .package(name: "HighlightJSPublishPlugin", url: "https://github.com/alex-ross/highlightjspublishplugin", from: "1.0.0"),
    .package(name: "TaskRunner", url: "https://github.com/crunchybananas/TaskRunner", from: "0.0.2")
  ],
  targets: [
    .executableTarget(
      name: "CrunchyBlog",
      dependencies: ["Publish", "HighlightJSPublishPlugin", "TaskRunner"]
    )
  ]
)
