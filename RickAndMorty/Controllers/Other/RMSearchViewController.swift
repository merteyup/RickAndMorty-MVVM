//
//  RMSearchViewController.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 5.07.2023.
//

import UIKit

/// Dynamic search option view
/// Searching api call
/// Render results
/// Render no result case

/// Configurable controller to search
final class RMSearchViewController: UIViewController {
    
    /// Configuration for search session
    struct Config {
        enum `Type` {
            case character // name | status | gender
            case episode // name
            case location // name | type
            
            var title: String {
                switch self {
                case .character:
                    return "Search Chars"
                case .location:
                    return "Search location"
                case .episode:
                    return "Search episode"
                }
            }
        }
        let type: `Type`
    }
    
    private let config: Config

    // MARK: - Init
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = config.type.title
        view.backgroundColor = .systemMint

    }
       

}
