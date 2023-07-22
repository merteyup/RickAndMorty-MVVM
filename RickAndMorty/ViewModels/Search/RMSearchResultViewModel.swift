//
//  RMSearchResultViewModel.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 22.07.2023.
//

import Foundation

enum RMSearchResultViewModel {
    case characters ([RMCharacterCollectionViewCellViewModel])
    case episodes ([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations ([RMLocationTableViewCellViewModel])
}
