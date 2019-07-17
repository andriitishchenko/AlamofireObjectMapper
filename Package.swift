

import PackageDescription

let package = Package(
  name: "AlamofireObjectMapper",
  platforms: [
    .iOS(.v10),
    .macOS(.v10_12),
    .tvOS(.v10),
    .watchOS(.v3)
  ],
  products: [
    .library(name: "AlamofireObjectMapper", targets: ["AlamofireObjectMapper"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/Alamofire/Alamofire.git",
      from: Version(5, 0, 0, prereleaseIdentifiers: ["beta.5"])
    )
  ],
  targets: [
    .target(
      name: "AlamofireObjectMapper",
      dependencies: ["Alamofire"],
      path: "Source"
    )
  ],
  swiftLanguageVersions: [.v5]
)
