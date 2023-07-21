//
//  RMLocationDetailViewController.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 21.07.2023.
//

import UIKit

/// View Controller to show single episode
final class RMLocationDetailViewController: UIViewController, RMLocationDetailViewViewModelDelegate {
    
    private let viewModel: RMLocationDetailViewViewModel
    private let detailView = RMLocationDetailView()
    
    // MARK: - Init
    
    init(location: RMLocation) {
        let url = URL(string: location.url)
        self.viewModel = RMLocationDetailViewViewModel(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailView)
        title = "Location"
        detailView.delegate = self
        addConstraints()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action,
                                                            target: self,
                                                            action: #selector(didTapShare))
        
        viewModel.delegate = self
        viewModel.fetchLocationData()
        
    }
    
    @objc
    private func didTapShare() {
        
    }
    
    
    fileprivate func addConstraints() {
        NSLayoutConstraint.activate([
            detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            detailView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            detailView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            detailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    // MARK: - ViewModelDelegate
    
    func didFetchLocationDetails() {
        detailView.configure(with: viewModel)
    }
    
}

    // MARK: - ViewDelegate
extension RMLocationDetailViewController :  RMLocationDetailViewDelegate {
    
    func rmEpisodeDetailView(_ detailView: RMLocationDetailView, didSelect character: RMCharacter) {
        let vc = RMCharacterDetailViewController(viewModel: .init(character: character))
        vc.title = character.name
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}


