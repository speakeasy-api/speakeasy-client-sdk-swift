// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.GeneratePostmanCollectionForApiEndpointRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GeneratePostmanCollectionForApiEndpointRequest", format: format.formatDescription)
        }
    }
}

extension Operations.GeneratePostmanCollectionForApiEndpointRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "apiEndpointID": try apiEndpointID.serialize(with: formatOverride ?? .path(explode: false)),
            "apiID": try apiID.serialize(with: formatOverride ?? .path(explode: false)),
            "versionID": try versionID.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}
