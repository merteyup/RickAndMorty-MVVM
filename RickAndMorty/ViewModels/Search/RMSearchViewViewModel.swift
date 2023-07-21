//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 21.07.2023.
//

import Foundation


/// Show search results
/// Show no results view
/// Kick of api request

final class RMSearchViewViewModel {
    
    let config: RMSearchViewController.Config
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
}
