// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Client: APIEndpointsAPI { 
    public func deleteApiEndpoint(request: Operations.DeleteApiEndpointRequest) async throws -> Response<Operations.DeleteApiEndpointResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureDeleteApiEndpointRequest(with: configuration, request: request)
            },
            handleResponse: handleDeleteApiEndpointResponse
        )
    }
    public func findApiEndpoint(request: Operations.FindApiEndpointRequest) async throws -> Response<Operations.FindApiEndpointResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureFindApiEndpointRequest(with: configuration, request: request)
            },
            handleResponse: handleFindApiEndpointResponse
        )
    }
    public func generateOpenApiSpecForApiEndpoint(request: Operations.GenerateOpenApiSpecForApiEndpointRequest) async throws -> Response<Operations.GenerateOpenApiSpecForApiEndpointResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGenerateOpenApiSpecForApiEndpointRequest(with: configuration, request: request)
            },
            handleResponse: handleGenerateOpenApiSpecForApiEndpointResponse
        )
    }
    public func generatePostmanCollectionForApiEndpoint(request: Operations.GeneratePostmanCollectionForApiEndpointRequest) async throws -> Response<Operations.GeneratePostmanCollectionForApiEndpointResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGeneratePostmanCollectionForApiEndpointRequest(with: configuration, request: request)
            },
            handleResponse: handleGeneratePostmanCollectionForApiEndpointResponse
        )
    }
    public func getAllApiEndpoints(request: Operations.GetAllApiEndpointsRequest) async throws -> Response<Operations.GetAllApiEndpointsResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetAllApiEndpointsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetAllApiEndpointsResponse
        )
    }
    public func getAllForVersionApiEndpoints(request: Operations.GetAllForVersionApiEndpointsRequest) async throws -> Response<Operations.GetAllForVersionApiEndpointsResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetAllForVersionApiEndpointsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetAllForVersionApiEndpointsResponse
        )
    }
    public func getApiEndpoint(request: Operations.GetApiEndpointRequest) async throws -> Response<Operations.GetApiEndpointResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetApiEndpointRequest(with: configuration, request: request)
            },
            handleResponse: handleGetApiEndpointResponse
        )
    }
    public func upsertApiEndpoint(request: Operations.UpsertApiEndpointRequest) async throws -> Response<Operations.UpsertApiEndpointResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureUpsertApiEndpointRequest(with: configuration, request: request)
            },
            handleResponse: handleUpsertApiEndpointResponse
        )
    }
}

// MARK: - Request Configuration

private func configureDeleteApiEndpointRequest(with configuration: URLRequestConfiguration, request: Operations.DeleteApiEndpointRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureFindApiEndpointRequest(with configuration: URLRequestConfiguration, request: Operations.FindApiEndpointRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/api_endpoints/find/{displayName}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGenerateOpenApiSpecForApiEndpointRequest(with configuration: URLRequestConfiguration, request: Operations.GenerateOpenApiSpecForApiEndpointRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}/generate/openapi"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGeneratePostmanCollectionForApiEndpointRequest(with configuration: URLRequestConfiguration, request: Operations.GeneratePostmanCollectionForApiEndpointRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}/generate/postman"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetAllApiEndpointsRequest(with configuration: URLRequestConfiguration, request: Operations.GetAllApiEndpointsRequest) throws {
    configuration.path = "/v1/apis/{apiID}/api_endpoints"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetAllForVersionApiEndpointsRequest(with configuration: URLRequestConfiguration, request: Operations.GetAllForVersionApiEndpointsRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/api_endpoints"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetApiEndpointRequest(with configuration: URLRequestConfiguration, request: Operations.GetApiEndpointRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureUpsertApiEndpointRequest(with configuration: URLRequestConfiguration, request: Operations.UpsertApiEndpointRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/api_endpoints/{apiEndpointID}"
    configuration.method = .put
    configuration.pathParameterSerializable = request
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request.apiEndpointInput)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleDeleteApiEndpointResponse(response: Client.APIResponse) throws -> Operations.DeleteApiEndpointResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleFindApiEndpointResponse(response: Client.APIResponse) throws -> Operations.FindApiEndpointResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .apiEndpoint(try JSONDecoder().decode(Shared.ApiEndpoint.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGenerateOpenApiSpecForApiEndpointResponse(response: Client.APIResponse) throws -> Operations.GenerateOpenApiSpecForApiEndpointResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .generateOpenApiSpecDiff(try JSONDecoder().decode(Shared.GenerateOpenApiSpecDiff.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGeneratePostmanCollectionForApiEndpointResponse(response: Client.APIResponse) throws -> Operations.GeneratePostmanCollectionForApiEndpointResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/octet-stream"), let data = response.data {
            return .postmanCollection(data)
        }
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetAllApiEndpointsResponse(response: Client.APIResponse) throws -> Operations.GetAllApiEndpointsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .apiEndpoints(try JSONDecoder().decode([Shared.ApiEndpoint].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetAllForVersionApiEndpointsResponse(response: Client.APIResponse) throws -> Operations.GetAllForVersionApiEndpointsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .apiEndpoints(try JSONDecoder().decode([Shared.ApiEndpoint].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetApiEndpointResponse(response: Client.APIResponse) throws -> Operations.GetApiEndpointResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .apiEndpoint(try JSONDecoder().decode(Shared.ApiEndpoint.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleUpsertApiEndpointResponse(response: Client.APIResponse) throws -> Operations.UpsertApiEndpointResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .apiEndpoint(try JSONDecoder().decode(Shared.ApiEndpoint.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .error(try JSONDecoder().decode(Shared.Error.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

