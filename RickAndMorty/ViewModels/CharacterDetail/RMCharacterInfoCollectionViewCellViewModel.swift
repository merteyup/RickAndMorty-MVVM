//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 4.07.2023.
//

import UIKit

final class RMCharacterInfoCollectionViewCellViewModel {
    
    private let type : `Type`
    private let value : String
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSZ"
        formatter.timeZone = .current
        return formatter
    }()
    
    static let shortDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
    
    public var title: String {
        type.displayTitle
    }
    
    public var displayValue : String {
        if value.isEmpty { return "None"}
        if let date = Self.dateFormatter.date(from: value),
           type == .created {
            let result = Self.shortDateFormatter.string(from: date)
            return Self.shortDateFormatter.string(from: date)
        }
        return value
    }
    
    public var iconImage : UIImage? {
        
        return type.iconImage
    }
    
    public var tintColor: UIColor {
        return type.tintColor
    }
    
    enum `Type`: String {
        
        case status
        case gender
        case type
        case species
        case origin
        case created
        case location
        case episodeCount
        
        
        var tintColor: UIColor {
            switch self {
            case .status:
                return .systemBlue
            case .gender:
                return .systemRed
            case .type:
                return .systemGreen
            case .species:
                return .systemYellow
            case .origin:
                return .systemPink
            case .created:
                return .systemMint
            case .location:
                return .systemPurple
            case .episodeCount:
                return .systemCyan
            }
        }
        
        var iconImage: UIImage? {
            switch self {
            case .status:
                return UIImage(systemName: "bell")
            case .gender:
                return UIImage(systemName: "bell")
            case .type:
                return UIImage(systemName: "bell")
            case .species:
                return UIImage(systemName: "bell")
            case .origin:
                return UIImage(systemName: "bell")
            case .created:
                return UIImage(systemName: "bell")
            case .location:
                return UIImage(systemName: "bell")
            case .episodeCount:
                return UIImage(systemName: "bell")
                
            }
        }
        
        var displayTitle: String {
            switch self {
            case .status,
                    .gender,
                    .type,
                    .species,
                    .origin,
                    .created,
                    .location:
                return rawValue.uppercased()
            case .episodeCount:
                return "Episode Count"
                
            }
        }
    }
    
    
    init(type: `Type`, value : String) {
        self.value = value
        self.type = type
    }
}
