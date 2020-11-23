//
//  TCBButtonStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

public protocol TCBButtonStyle {
    var activeBackgroundColor: UIColor { get }
    var inactiveBackgroundColor: UIColor { get }
    var activeTextColor: UIColor { get }
    var inactiveTextColor: UIColor { get }
}

public struct TCBButtonDefaultStyle: TCBButtonStyle {
    public var activeBackgroundColor: UIColor {
        return .darkGreyBlue
    }
    
    public var inactiveBackgroundColor: UIColor {
        return .cloudyBlue
    }
    
    public var activeTextColor: UIColor {
        return UIColor.white
    }
    
    public var inactiveTextColor: UIColor {
        return UIColor.gray
    }
}
