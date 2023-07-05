//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 5.07.2023.
//

import Foundation

class RMEpisodeDetailViewViewModel {
    
    private let endpointUrl: URL?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
        fetchEpisodeData()
    }
    
    private func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else {
            return
        }
        RMService.shared.execute(request,
                                 expecting: RMEpisode.self) { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
}
