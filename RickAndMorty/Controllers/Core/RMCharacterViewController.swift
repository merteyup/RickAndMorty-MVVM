//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 18.05.2023.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        
        view.backgroundColor = .systemBackground
        title = "Characters"
      
        
        
        let request = RMRequest(endpoint: .character,
                                queryParameters: [URLQueryItem(name: "name", value: "rick"),
                                                  URLQueryItem(name: "status", value: "rick")]
                            )

        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
           
        }
        
    }
    


}
