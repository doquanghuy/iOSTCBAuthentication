//
//  TCBPopupStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

protocol TCBPopupStyle {
    // title
    var titleFont: UIFont { get }
    var titleTextColor: UIColor { get }
    var titleAlignment: NSTextAlignment { get }
    
    // description
    var descriptionFont: UIFont { get }
    var descriptionTextColor: UIColor { get }
    var descriptionAlignment: NSTextAlignment { get }
}

struct TCBPopupDefaultStyle: TCBPopupStyle {
    var titleFont: UIFont = UIFont.boldSystemFont(ofSize: 18)
    
    var titleTextColor: UIColor = UIColor.black.withAlphaComponent(0.65)
    
    var titleAlignment: NSTextAlignment = NSTextAlignment.center
    
    var descriptionFont: UIFont = UIFont.systemFont(ofSize: 15)
    
    var descriptionTextColor: UIColor = UIColor.black.withAlphaComponent(0.85)
    
    var descriptionAlignment: NSTextAlignment = NSTextAlignment.center
}
