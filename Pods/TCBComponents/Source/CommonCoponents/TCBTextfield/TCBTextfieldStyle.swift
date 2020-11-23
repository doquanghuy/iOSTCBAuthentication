//
//  TCBTextfieldStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

public protocol TCBTextfieldStyle {
    var activeLineColor: UIColor { get }
    var activePlaceholderTextColor: UIColor { get }
    var inactiveLineColor: UIColor { get }
    var inactivePlaceholderTextColor: UIColor { get }
    var errorLineColor: UIColor { get }
    var errorColor: UIColor { get }
    var placeholderFontActive: UIFont { get }
    var placeholderFontInactive: UIFont { get }
    var errorFont: UIFont { get }
}

struct TCBTextfieldDefaultStyle: TCBTextfieldStyle {
    var activeLineColor: UIColor {
        return .darkText
    }
    
    var activePlaceholderTextColor: UIColor {
        return .lightText
    }
    
    var inactiveLineColor: UIColor {
        return .lightText
    }
    
    var inactivePlaceholderTextColor: UIColor {
        return .darkText
    }
    
    var errorLineColor: UIColor {
        return .clear
    }
    
    var errorColor: UIColor {
        return .clear
    }
    
    var placeholderFontActive: UIFont {
        return DefaultDesign.fonts.defaultFont(ofSize: 12)
    }
    
    var placeholderFontInactive: UIFont {
        return DefaultDesign.fonts.defaultFont(ofSize: 15)
    }
    
    var errorFont: UIFont {
        return DefaultDesign.fonts.defaultFont(ofSize: 12)
    }
}
