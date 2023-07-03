//
//  RMCharacterDetailViewViewmodel.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 2.07.2023.
//

import Foundation


final class RMCharacterDetailViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    
    public var title: String {
        character.name.uppercased()
    }
}
