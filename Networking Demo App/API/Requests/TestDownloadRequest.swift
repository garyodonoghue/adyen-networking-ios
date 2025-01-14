//
//  TestDownloadRequest.swift
//  Networking Demo App
//
//  Created by James McGuire on 29/09/2022.
//

import Foundation
import AdyenNetworking

internal struct DownloadError: ErrorResponse {
    
}

internal struct TestDownloadRequest: Request {
    typealias ResponseType = DownloadResponse
    
    typealias ErrorResponseType = DownloadError
    
    var delegate: URLSessionDownloadDelegate?
    
    var path: String = "dam/jcr:b07f6545-f41b-4afd-862c-66b7d953d886/presskit-photo-branded.jpg"
    
    var counter: UInt = 0
    
    var headers: [String : String] = [:]
    
    var queryParameters: [URLQueryItem] = []
    
    var method: HTTPMethod = .get
    
    private enum CodingKeys: CodingKey {}
}

@available(iOS 15.0.0, *)
internal struct TestAsyncDownloadRequest: AsyncDownloadRequest {
    typealias ResponseType = DownloadResponse
    
    typealias ErrorResponseType = DownloadError
    
    var onProgressUpdate: ((Double) -> Void)?
    
    var delegate: URLSessionDownloadDelegate?
    
    var path: String = "dam/jcr:b07f6545-f41b-4afd-862c-66b7d953d886/presskit-photo-branded.jpg"
    
    var counter: UInt = 0
    
    var headers: [String : String] = [:]
    
    var queryParameters: [URLQueryItem] = []
    
    var method: HTTPMethod = .get
    
    private enum CodingKeys: CodingKey {}
}
