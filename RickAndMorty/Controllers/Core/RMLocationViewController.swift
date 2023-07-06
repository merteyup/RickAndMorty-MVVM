//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 18.05.2023.
//

import UIKit

/// Controller to show and search for location
final class RMLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Locations"
        addSearchButton()
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search,
                                                            target: self,
                                                            action: #selector(didTapSearch))
    }
    
    @objc
    private func didTapSearch() {
        
    }
    


}
