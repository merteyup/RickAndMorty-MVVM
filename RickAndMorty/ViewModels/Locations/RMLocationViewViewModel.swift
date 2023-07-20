//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 20.07.2023.
//

import Foundation

protocol RMLocationViewViewModelDelegate : AnyObject {
    func didFetchInitialLocations()
}

final class RMLocationViewViewModel {
    
    weak var delegate : RMLocationViewViewModelDelegate?
    
    private var locations: [RMLocation] = []
    private var cellViewModels: [String] = []
    private var apiInfo: RMGetAllLocationsResponse.Info?
    
    /// Location response info
    /// Will contain next url if present

    
    init() {
        
    }
    
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequest,
                                 expecting: RMGetAllLocationsResponse.self
        ) { [weak self] result in
            switch result {
            case .success(let model):
                self?.apiInfo = model.info
                self?.locations = model.results
                DispatchQueue.main.async {
                    self?.delegate?.didFetchInitialLocations()
                }
            case .failure(let failure):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        
        return false
    }
    
}
