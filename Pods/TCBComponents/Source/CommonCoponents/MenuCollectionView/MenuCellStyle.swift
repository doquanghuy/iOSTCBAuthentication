//
//  MenuCellStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

protocol MenuCellStyle {
    var titleFont: UIFont { get }
    var titleTextColor: UIColor { get }
}

struct MenuCellDefaultStyle: MenuCellStyle {
    var titleFont: UIFont = .systemFont(ofSize: 12.0)
    var titleTextColor: UIColor = UIColor.black.withAlphaComponent(0.6)
}
