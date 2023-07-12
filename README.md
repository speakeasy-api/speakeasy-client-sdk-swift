# Speakeasy

![Platform](https://img.shields.io/badge/Platform-iOS-lightgray)
![Swift Version](https://img.shields.io/badge/Swift-5.6-orange.svg)

Speakeasy API: The Speakeasy API allows teams to manage common operations with their APIs

## Requirements

The SDK supports iOS 13 and later.

<!-- Start SDK Installation -->
## Installation

### Swift Package Manager

You can add `Speakeasy` to your project directly in Xcode `(File > Add Packages...)` or by adding it to your project's Package.swift file:

```bash
dependencies: [
    .package(url: "https://github.com/speakeasy-api/speakeasy-client-sdk-swift", .upToNextMajor(from: "0.3.0"))
]
```

<!-- End SDK Installation -->

## Usage

<!-- Start SDK Example Usage -->
```swift
import Foundation
import Speakeasy

let client = Client(security: .apiKey(""))
let response = try await client.apis.getApis(
    request: Operations.GetApisRequest(
        metadata: [
            "provident": [
                "quibusdam",
                "unde",
                "nulla",
            ], 
            "corrupti": [
                "vel",
                "error",
                "deserunt",
                "suscipit",
            ], 
            "iure": [
                "debitis",
                "ipsa",
            ], 
        ], 
        op: Operations.GetApisOp(
            and: false
        )
    )
)

switch response.data {
case .apis(let apis):
    // Handle response
case .error(let error):
    // Handle response
case .empty:
    // Handle empty response
}

```
<!-- End SDK Example Usage -->

## Documentation

You can find more extensive documentation in the [hosted documentation](https://speakeasy-api.github.io/speakeasy-client-sdk-swift/documentation/speakeasy).

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a GitHub issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
