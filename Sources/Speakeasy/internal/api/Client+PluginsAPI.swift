// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Client: PluginsAPI { 
    public func getPlugins() async throws -> Operations.GetPluginsResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetPluginsRequest(with: configuration)
            },
            handleResponse: handleGetPluginsResponse
        )
    }
    public func runPlugin(request: Operations.RunPluginRequest) async throws -> Operations.RunPluginResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureRunPluginRequest(with: configuration, request: request)
            },
            handleResponse: handleRunPluginResponse
        )
    }
    public func upsertPlugin(request: Shared.Plugin) async throws -> Operations.UpsertPluginResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureUpsertPluginRequest(with: configuration, request: request)
            },
            handleResponse: handleUpsertPluginResponse
        )
    }
}

// MARK: - Request Configuration

private func configureGetPluginsRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/v1/plugins"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureRunPluginRequest(with configuration: URLRequestConfiguration, request: Operations.RunPluginRequest) throws {
    configuration.path = "/v1/plugins/{pluginID}"
    configuration.method = .post
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureUpsertPluginRequest(with configuration: URLRequestConfiguration, request: Shared.Plugin) throws {
    configuration.path = "/v1/plugins"
    configuration.method = .put
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetPluginsResponse(response: SpeakeasyResponse) throws -> Operations.GetPluginsResponse {
    var responseObject = Operations.GetPluginsResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.plugins = try JSONDecoder().decode([Shared.Plugin].self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.error = try JSONDecoder().decode(Shared.Error.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return responseObject
}

private func handleRunPluginResponse(response: SpeakeasyResponse) throws -> Operations.RunPluginResponse {
    var responseObject = Operations.RunPluginResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.boundedRequests = try JSONDecoder().decode([Shared.BoundedRequest].self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.error = try JSONDecoder().decode(Shared.Error.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return responseObject
}

private func handleUpsertPluginResponse(response: SpeakeasyResponse) throws -> Operations.UpsertPluginResponse {
    var responseObject = Operations.UpsertPluginResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.plugin = try JSONDecoder().decode(Shared.Plugin.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.error = try JSONDecoder().decode(Shared.Error.self, from: data)
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return responseObject
}
