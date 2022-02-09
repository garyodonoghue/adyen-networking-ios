//
//  APIError.swift
//  AdyenNetworking
//
//  Created by Mohamed Eldoheiri on 7/27/21.
//

import Foundation

/// Describes possible `APIClient` errors
public enum APIClientError: LocalizedError {
    
    case invalidResponse
    
    var errorDescription: String {
        return "Invalid Response"
    }
    
}

/// Represents a parsing error object
public struct ParsingError: LocalizedError {
    
    /// HTTP Headers.
    public let headers: [String: String]
    
    /// HTTP Status Code.
    public let statusCode: Int
    
    /// Underlying error of type ``DecodingError``
    public let underlyingError: DecodingError
    
}
