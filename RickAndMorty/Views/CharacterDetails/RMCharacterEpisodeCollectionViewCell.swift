//
//  RMCharacterEpisodeCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 4.07.2023.
//

import UIKit

class RMCharacterEpisodeCollectionViewCell: UICollectionViewCell {
 
    static let identifier = "RMCharacterEpisodeCollectionViewCell"

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red

    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setUpConstraints() {
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    public func configure(with viewMode: RMCharacterEpisodeCollectionViewCellViewModel) {
        
    }
    
}
