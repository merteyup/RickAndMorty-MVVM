//
//  RMSearchResultsView.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 22.07.2023.
//

import UIKit

/// Shows search results UI (Table or collection)
final class RMSearchResultsView: UIView {
    
    private var viewModel : RMSearchResultViewModel? {
        didSet {
            self.processViewModel()
        }
    }
    
    private let tableView : UITableView = {
        let table = UITableView()
        table.register(RMLocationTableViewCell.self,
                       forCellReuseIdentifier: RMLocationTableViewCell.cellIdentifier)
        table.isHidden = true
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .yellow
        return table
    }()
    
    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        isHidden = true
        translatesAutoresizingMaskIntoConstraints = false
        addSubViews(tableView)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func processViewModel() {
        guard let viewModel = viewModel else {
            return
        }
        
        switch viewModel {
        case .characters(let viewModels):
            setUpCollectionView()
        case .episodes(let viewModels):
            setUpCollectionView()
        case .locations(let viewModels):
            setUpTableView()
        }
    }
    
    private func setUpCollectionView() {
        
    }
    
    private func setUpTableView() {
        
        tableView.isHidden = false
        
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)

        ])
        
    }
    
    public func configure(with viewModel: RMSearchResultViewModel) {
        self.viewModel = viewModel
    }
}
