// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// Describes the result of making a request to the API.
///
/// This type is returned by all functions which make calls to the API. It returns information about the response
/// and is parameterised by `T` over the type of data which is returned by the API operation.
public struct Response<T> {
    /// The HTTP status code returned by the server.
    ///
    /// This property contains the HTTP status code returned by the server in response to the underlying network request
    /// made to fulfill the given API operation.
    public var statusCode: Int {
        return httpResponse.statusCode
    }

    /// The media type returned by the server.
    ///
    /// This property contains the media type returned by the server in response to the underlying network request
    /// made to fulfill the given API operation.
    public var contentType: String {
        return httpResponse.contentType
    }

    /// The raw HTTP response object.
    ///
    /// This property contains the [HTTPURLResponse](https://developer.apple.com/documentation/foundation/httpurlresponse) object
    /// returned from making the underlying network request to fulfill the given API operation.
    public let httpResponse: HTTPURLResponse

    /// The response data.
    ///
    /// This property contains any response data associated with the API operation.
    public let data: T
}
