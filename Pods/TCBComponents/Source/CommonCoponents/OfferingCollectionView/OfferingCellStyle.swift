//
//  OfferingCellStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

protocol OfferingCellStyle {
    var titleFont: UIFont { get }
    var titleTextColor: UIColor { get }
    var subTitleFont: UIFont { get }
    var subTitleTextColor: UIColor { get }
}

struct OfferingCellDefaultStyle: OfferingCellStyle {
    var titleFont: UIFont = .boldSystemFont(ofSize: 16)
    var titleTextColor: UIColor = .black
    var subTitleFont: UIFont = .systemFont(ofSize: 14)
    var subTitleTextColor: UIColor = UIColor.black.withAlphaComponent(0.6)
}
