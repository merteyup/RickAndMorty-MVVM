//
//  GetCharactersResponse.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 23.05.2023.
//

import Foundation


struct RmGetAllCharactersResponse: Codable {
    
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
    
}


