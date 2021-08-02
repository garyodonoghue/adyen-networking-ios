//
//  CreateUsersRequest.swift
//  Networking Demo App
//
//  Created by Mohamed Eldoheiri on 7/30/21.
//

import Foundation
import AdyenNetworking

internal struct CreateUsersRequest: Request {

    typealias ResponseType = CreateUsersResponse
    
    typealias ErrorResponseType = HttpError
    
    let method: HTTPMethod = .post
    
    let path: String = "users"
    
    let queryParameters: [URLQueryItem] = []
    
    let userModel: UserModel
    
    var counter: UInt = 0
    
    let headers: [String : String] = [:]
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(userModel)
    }
    
    private enum CodingKeys: CodingKey {}
}

internal struct CreateUsersResponse: Response {
    let data: UserModel
}
