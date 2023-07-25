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
    break
case .error(let error):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
<!-- End SDK Example Usage -->