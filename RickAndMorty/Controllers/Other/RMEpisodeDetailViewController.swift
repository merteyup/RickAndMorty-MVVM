//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 5.07.2023.
//

import UIKit


/// View Controller to show single episode
final class RMEpisodeDetailViewController: UIViewController, RMEpisodeDetailViewViewModelDelegate {
    
    private let viewModel: RMEpisodeDetailViewViewModel
    private let detailView = RMEpisodeDetailView()
    
    // MARK: - Init
    
    init(url: URL?) {
        self.viewModel = RMEpisodeDetailViewViewModel(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
        
    }
  
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailView)
        title = "Episode"
        addConstraints()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action,
                                                            target: self,
                                                            action: #selector(didTapShare))
        
        viewModel.delegate = self
        viewModel.fetchEpisodeData()

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
    
    // MARK: - Delegate
    
    func didFetchEpisodeDetails() {
        detailView.configure(with: viewModel)
    }

}
