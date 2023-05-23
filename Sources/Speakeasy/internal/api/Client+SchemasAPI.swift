// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Client: SchemasAPI { 
    public func deleteSchema(request: Operations.DeleteSchemaRequest) async throws -> Operations.DeleteSchemaResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureDeleteSchemaRequest(with: configuration, request: request)
            },
            handleResponse: handleDeleteSchemaResponse
        )
    }
    public func downloadSchema(request: Operations.DownloadSchemaRequest) async throws -> Operations.DownloadSchemaResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureDownloadSchemaRequest(with: configuration, request: request)
            },
            handleResponse: handleDownloadSchemaResponse
        )
    }
    public func downloadSchemaRevision(request: Operations.DownloadSchemaRevisionRequest) async throws -> Operations.DownloadSchemaRevisionResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureDownloadSchemaRevisionRequest(with: configuration, request: request)
            },
            handleResponse: handleDownloadSchemaRevisionResponse
        )
    }
    public func getSchema(request: Operations.GetSchemaRequest) async throws -> Operations.GetSchemaResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetSchemaRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSchemaResponse
        )
    }
    public func getSchemaDiff(request: Operations.GetSchemaDiffRequest) async throws -> Operations.GetSchemaDiffResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetSchemaDiffRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSchemaDiffResponse
        )
    }
    public func getSchemaRevision(request: Operations.GetSchemaRevisionRequest) async throws -> Operations.GetSchemaRevisionResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetSchemaRevisionRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSchemaRevisionResponse
        )
    }
    public func getSchemas(request: Operations.GetSchemasRequest) async throws -> Operations.GetSchemasResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureGetSchemasRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSchemasResponse
        )
    }
    public func registerSchema(request: Operations.RegisterSchemaRequest) async throws -> Operations.RegisterSchemaResponse {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureRegisterSchemaRequest(with: configuration, request: request)
            },
            handleResponse: handleRegisterSchemaResponse
        )
    }
}

// MARK: - Request Configuration

private func configureDeleteSchemaRequest(with configuration: URLRequestConfiguration, request: Operations.DeleteSchemaRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureDownloadSchemaRequest(with configuration: URLRequestConfiguration, request: Operations.DownloadSchemaRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schema/download"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureDownloadSchemaRevisionRequest(with configuration: URLRequestConfiguration, request: Operations.DownloadSchemaRevisionRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}/download"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSchemaRequest(with configuration: URLRequestConfiguration, request: Operations.GetSchemaRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schema"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSchemaDiffRequest(with configuration: URLRequestConfiguration, request: Operations.GetSchemaDiffRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schema/{baseRevisionID}/diff/{targetRevisionID}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSchemaRevisionRequest(with configuration: URLRequestConfiguration, request: Operations.GetSchemaRevisionRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schema/{revisionID}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSchemasRequest(with configuration: URLRequestConfiguration, request: Operations.GetSchemasRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schemas"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureRegisterSchemaRequest(with configuration: URLRequestConfiguration, request: Operations.RegisterSchemaRequest) throws {
    configuration.path = "/v1/apis/{apiID}/version/{versionID}/schema"
    configuration.method = .post
    configuration.pathParameterSerializable = request
    let (boundary, formData) = try serializeMultipartFormData(with: request.requestBody)
    configuration.contentType = multipartContentType(with: boundary)
    configuration.body = formData
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleDeleteSchemaResponse(response: SpeakeasyResponse) throws -> Operations.DeleteSchemaResponse {
    var responseObject = Operations.DeleteSchemaResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
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

private func handleDownloadSchemaResponse(response: SpeakeasyResponse) throws -> Operations.DownloadSchemaResponse {
    var responseObject = Operations.DownloadSchemaResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            responseObject.schema = data
        }
        if response.contentType.matchContentType(pattern: "application/x-yaml"), let data = response.data {
            responseObject.schema = data
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

private func handleDownloadSchemaRevisionResponse(response: SpeakeasyResponse) throws -> Operations.DownloadSchemaRevisionResponse {
    var responseObject = Operations.DownloadSchemaRevisionResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            responseObject.schema = data
        }
        if response.contentType.matchContentType(pattern: "application/x-yaml"), let data = response.data {
            responseObject.schema = data
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

private func handleGetSchemaResponse(response: SpeakeasyResponse) throws -> Operations.GetSchemaResponse {
    var responseObject = Operations.GetSchemaResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.schema = try JSONDecoder().decode(Shared.Schema.self, from: data)
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

private func handleGetSchemaDiffResponse(response: SpeakeasyResponse) throws -> Operations.GetSchemaDiffResponse {
    var responseObject = Operations.GetSchemaDiffResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.schemaDiff = try JSONDecoder().decode(Shared.SchemaDiff.self, from: data)
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

private func handleGetSchemaRevisionResponse(response: SpeakeasyResponse) throws -> Operations.GetSchemaRevisionResponse {
    var responseObject = Operations.GetSchemaRevisionResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.schema = try JSONDecoder().decode(Shared.Schema.self, from: data)
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

private func handleGetSchemasResponse(response: SpeakeasyResponse) throws -> Operations.GetSchemasResponse {
    var responseObject = Operations.GetSchemasResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
        if response.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                responseObject.schemata = try JSONDecoder().decode([Shared.Schema].self, from: data)
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

private func handleRegisterSchemaResponse(response: SpeakeasyResponse) throws -> Operations.RegisterSchemaResponse {
    var responseObject = Operations.RegisterSchemaResponse(
        contentType: response.contentType,
        statusCode: response.statusCode,
        rawResponse: response.httpResponse
    )
    
    if responseObject.statusCode == 200 { 
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

