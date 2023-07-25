// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _RequestsAPI: RequestsAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func generateRequestPostmanCollection(request: Operations.GenerateRequestPostmanCollectionRequest) async throws -> Response<Operations.GenerateRequestPostmanCollectionResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGenerateRequestPostmanCollectionRequest(with: configuration, request: request)
            },
            handleResponse: handleGenerateRequestPostmanCollectionResponse
        )
    }
    
    public func getRequestFromEventLog(request: Operations.GetRequestFromEventLogRequest) async throws -> Response<Operations.GetRequestFromEventLogResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetRequestFromEventLogRequest(with: configuration, request: request)
            },
            handleResponse: handleGetRequestFromEventLogResponse
        )
    }
    
    public func queryEventLog(request: Operations.QueryEventLogRequest) async throws -> Response<Operations.QueryEventLogResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureQueryEventLogRequest(with: configuration, request: request)
            },
            handleResponse: handleQueryEventLogResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGenerateRequestPostmanCollectionRequest(with configuration: URLRequestConfiguration, request: Operations.GenerateRequestPostmanCollectionRequest) throws {
    configuration.path = "/v1/eventlog/{requestID}/generate/postman"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetRequestFromEventLogRequest(with configuration: URLRequestConfiguration, request: Operations.GetRequestFromEventLogRequest) throws {
    configuration.path = "/v1/eventlog/{requestID}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureQueryEventLogRequest(with configuration: URLRequestConfiguration, request: Operations.QueryEventLogRequest) throws {
    configuration.path = "/v1/eventlog/query"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGenerateRequestPostmanCollectionResponse(response: Client.APIResponse) throws -> Operations.GenerateRequestPostmanCollectionResponse {
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

private func handleGetRequestFromEventLogResponse(response: Client.APIResponse) throws -> Operations.GetRequestFromEventLogResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unboundedRequest(try JSONDecoder().decode(Shared.UnboundedRequest.self, from: data))
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

private func handleQueryEventLogResponse(response: Client.APIResponse) throws -> Operations.QueryEventLogResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .boundedRequests(try JSONDecoder().decode([Shared.BoundedRequest].self, from: data))
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
