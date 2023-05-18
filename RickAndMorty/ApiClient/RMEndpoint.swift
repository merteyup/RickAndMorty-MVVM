//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 18.05.2023.
//

import Foundation

/// Represent unique api endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to character info
    case character
    /// Endpoint to location info
    case location
    /// Endpoint to episode info
    case episode
}
