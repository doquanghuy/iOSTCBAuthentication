//
//  SecretViewStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

protocol SecretViewStyle {
    var contentTextColor: UIColor { get }
    var contentFont: UIFont { get }
}

struct SecretViewDefaultStyle: SecretViewStyle {
    var contentTextColor: UIColor = .black
    var contentFont: UIFont = .boldSystemFont(ofSize: 22.0)
}
