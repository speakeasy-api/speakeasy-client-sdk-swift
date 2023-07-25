// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Client: SpeakeasyAPI {
    // MARK: - Root operations 
    
    /// Validate the current api key.
    /// 
    /// - Returns: A ``Operations/ValidateApiKeyResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``SpeakeasyError``
    public func validateApiKey() async throws -> Response<Operations.ValidateApiKeyResponse> {
        return try await makeRequest(
            configureRequest: { configuration in
                try configureValidateApiKeyRequest(with: configuration)
            },
            handleResponse: handleValidateApiKeyResponse
        )
    }

    // MARK: - Scoped API operations

    public var apiEndpoints: APIEndpointsAPI {
        return _APIEndpointsAPI(client: self)
    }

    public var apis: ApisAPI {
        return _ApisAPI(client: self)
    }

    public var embeds: EmbedsAPI {
        return _EmbedsAPI(client: self)
    }

    public var metadata: MetadataAPI {
        return _MetadataAPI(client: self)
    }

    public var plugins: PluginsAPI {
        return _PluginsAPI(client: self)
    }

    public var requests: RequestsAPI {
        return _RequestsAPI(client: self)
    }

    public var schemas: SchemasAPI {
        return _SchemasAPI(client: self)
    }
}

// MARK: - Request Configuration

private func configureValidateApiKeyRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/v1/auth/validate"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleValidateApiKeyResponse(response: Client.APIResponse) throws -> Operations.ValidateApiKeyResponse {
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

