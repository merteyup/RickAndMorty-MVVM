//
//  RMService.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 18.05.2023.
//

import Foundation

/// Primary api service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor.
    private init() {}
    
    /// Send Rick and Morty APi Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: Expected type from request
    ///   - completion: Callback with data or error
    public func execute<T: Codable> (
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
    
    
}
