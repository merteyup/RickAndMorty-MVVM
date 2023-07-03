//
//  RMCharacterDetailViewController.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 2.07.2023.
//

import UIKit

/// Controller to show about single character
class RMCharacterDetailViewController: UIViewController {

    private let viewModel: RMCharacterDetailViewModel
    
    init(viewModel: RMCharacterDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil,
                   bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
    }
    


}
