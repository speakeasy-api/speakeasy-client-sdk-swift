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

if let res = response.apis {
    // Handle response
}

```
<!-- End SDK Example Usage -->