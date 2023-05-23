# ``Speakeasy``

Speakeasy API: The Speakeasy API allows teams to manage common operations with their APIs

`Speakeasy` is a Swift library which provides functionality for making requests to the API using a modern, easy-to-use Swift API:

```swift
import Foundation
import Speakeasy

let client = Client(security: .apiKey(""))
let response = try await client.apis.getApis(
    request: Operations.GetApisRequest(
        metadata: [
            "tempora": [
                "molestiae",
                "minus",
            ], 
            "placeat": [
                "iusto",
                "excepturi",
                "nisi",
            ], 
            "recusandae": [
                "ab",
                "quis",
                "veritatis",
                "deserunt",
            ], 
            "perferendis": [
                "repellendus",
                "sapiente",
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

### Getting started
- ``SpeakeasyAPI`` defines the available API operations, including operations which are logically grouped by name (for example under ``SpeakeasyAPI/apiEndpoints``).
- ``Client`` is the main object used when making requests to the API, and implements ``SpeakeasyAPI`` to provide this functionality.  Each available API method is exposed as an `async` function, which you can call and `await` its response and handle any errors that are thrown.
- API methods that require input data take a *request object* describing these parameters, and each method returns a *response object* containing information about the response. You can read more about these in <doc:Client#Request-and-response-objects>.
- Requests to the API must be authenticated. You can provide authentication credentials by initializing ``Client`` with a ``Shared/Security`` value.
- If an error occurs when making a request to the API, a ``SpeakeasyError`` error is thrown with more information about what went wrong.

## Topics

### Connecting to the API

- ``Client``
- ``Shared/Security``
- ``SpeakeasyError``

### API operations

- ``Speakeasy/SpeakeasyAPI``
- ``APIEndpointsAPI``
- ``ApisAPI``
- ``EmbedsAPI``
- ``MetadataAPI``
- ``PluginsAPI``
- ``RequestsAPI``
- ``SchemasAPI``

### Server configuration

### Shared models
- ``Shared/Api``
- ``Shared/ApiEndpoint``
- ``Shared/ApiEndpointInput``
- ``Shared/ApiInput``
- ``Shared/BoundedRequest``
- ``Shared/EmbedAccessTokenResponse``
- ``Shared/EmbedToken``
- ``Shared/Error``
- ``Shared/Filter``
- ``Shared/Filters``
- ``Shared/GenerateOpenApiSpecDiff``
- ``Shared/Plugin``
- ``Shared/RequestMetadata``
- ``Shared/Schema``
- ``Shared/SchemaDiff``
- ``Shared/SchemaDiffValueChange``
- ``Shared/UnboundedRequest``
- ``Shared/VersionMetadata``
- ``Shared/VersionMetadataInput``

### Request objects
- ``Operations/DeleteApiEndpointRequest``
- ``Operations/DeleteApiRequest``
- ``Operations/DeleteSchemaRequest``
- ``Operations/DeleteVersionMetadataRequest``
- ``Operations/DownloadSchemaRequest``
- ``Operations/DownloadSchemaRevisionRequest``
- ``Operations/FindApiEndpointRequest``
- ``Operations/GenerateOpenApiSpecForApiEndpointRequest``
- ``Operations/GenerateOpenApiSpecRequest``
- ``Operations/GeneratePostmanCollectionForApiEndpointRequest``
- ``Operations/GeneratePostmanCollectionRequest``
- ``Operations/GenerateRequestPostmanCollectionRequest``
- ``Operations/GetAllApiEndpointsRequest``
- ``Operations/GetAllApiVersionsRequest``
- ``Operations/GetAllForVersionApiEndpointsRequest``
- ``Operations/GetApiEndpointRequest``
- ``Operations/GetApisRequest``
- ``Operations/GetEmbedAccessTokenRequest``
- ``Operations/GetRequestFromEventLogRequest``
- ``Operations/GetSchemaDiffRequest``
- ``Operations/GetSchemaRequest``
- ``Operations/GetSchemaRevisionRequest``
- ``Operations/GetSchemasRequest``
- ``Operations/GetVersionMetadataRequest``
- ``Operations/InsertVersionMetadataRequest``
- ``Operations/QueryEventLogRequest``
- ``Operations/RegisterSchemaRequest``
- ``Operations/RevokeEmbedAccessTokenRequest``
- ``Operations/RunPluginRequest``
- ``Operations/UpsertApiEndpointRequest``
- ``Operations/UpsertApiRequest``

### Response objects
- ``Operations/DeleteApiEndpointResponse``
- ``Operations/DeleteApiResponse``
- ``Operations/DeleteSchemaResponse``
- ``Operations/DeleteVersionMetadataResponse``
- ``Operations/DownloadSchemaResponse``
- ``Operations/DownloadSchemaRevisionResponse``
- ``Operations/FindApiEndpointResponse``
- ``Operations/GenerateOpenApiSpecForApiEndpointResponse``
- ``Operations/GenerateOpenApiSpecResponse``
- ``Operations/GeneratePostmanCollectionForApiEndpointResponse``
- ``Operations/GeneratePostmanCollectionResponse``
- ``Operations/GenerateRequestPostmanCollectionResponse``
- ``Operations/GetAllApiEndpointsResponse``
- ``Operations/GetAllApiVersionsResponse``
- ``Operations/GetAllForVersionApiEndpointsResponse``
- ``Operations/GetApiEndpointResponse``
- ``Operations/GetApisResponse``
- ``Operations/GetEmbedAccessTokenResponse``
- ``Operations/GetPluginsResponse``
- ``Operations/GetRequestFromEventLogResponse``
- ``Operations/GetSchemaDiffResponse``
- ``Operations/GetSchemaResponse``
- ``Operations/GetSchemaRevisionResponse``
- ``Operations/GetSchemasResponse``
- ``Operations/GetValidEmbedAccessTokensResponse``
- ``Operations/GetVersionMetadataResponse``
- ``Operations/InsertVersionMetadataResponse``
- ``Operations/QueryEventLogResponse``
- ``Operations/RegisterSchemaResponse``
- ``Operations/RevokeEmbedAccessTokenResponse``
- ``Operations/RunPluginResponse``
- ``Operations/UpsertApiEndpointResponse``
- ``Operations/UpsertApiResponse``
- ``Operations/UpsertPluginResponse``
- ``Operations/ValidateApiKeyResponse``

### Other models
- ``Operations/GetAllApiVersionsOp``
- ``Operations/GetApisOp``
- ``Operations/RegisterSchemaRequestBody``
- ``Operations/RegisterSchemaRequestBodyFile``

### Type groupings
- ``Shared``
- ``Operations``

### Data types

- ``AnyValue``
- ``APIValue``

### Internal data types

- ``DateConvertible``
- ``DateOnly``
- ``DateTime``
- ``DecimalSerialized``
- ``DoubleConvertible``
