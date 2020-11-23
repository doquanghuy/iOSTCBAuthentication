//
//  TCBAccountPanelStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

protocol TCBAccountPanelStyle {
    var titleFont: UIFont { get }
    var titleTextColor: UIColor { get }
    var accountFont: UIFont { get }
    var accountTextColor: UIColor { get }
    var accountBalanceFont: UIFont { get }
    var accountBalanceTextColor: UIColor { get }
    
    var accountDescFont: UIFont { get }
    var accountDescTextColor: UIColor { get }
    
}

struct TCBAccountPanelDefaultStyle: TCBAccountPanelStyle {
    var titleFont: UIFont = UIFont.systemFont(ofSize: 14)
    
    var titleTextColor: UIColor = UIColor.black.withAlphaComponent(0.6)
    
    var accountFont: UIFont = UIFont.boldSystemFont(ofSize: 16)
    
    var accountTextColor: UIColor = UIColor.black.withAlphaComponent(0.85)
    
    var accountBalanceFont: UIFont = UIFont.boldSystemFont(ofSize: 16)
    
    var accountBalanceTextColor: UIColor = UIColor.black.withAlphaComponent(0.85)
    
    var accountDescFont: UIFont = UIFont.systemFont(ofSize: 14)
    
    var accountDescTextColor: UIColor = UIColor.black.withAlphaComponent(0.6)
}
