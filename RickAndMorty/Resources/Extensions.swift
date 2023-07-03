//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Eyüp Mert on 23.05.2023.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({addSubview($0)})
    }
}
