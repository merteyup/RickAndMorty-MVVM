//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 5.07.2023.
//

import UIKit


/// View Controller to show single episode
final class RMEpisodeDetailViewController: UIViewController {
    
    private let url: URL?
    
    // MARK: - Init
    
    init(url: URL?) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
  
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Episode"
        view.backgroundColor = .green

    }


}
