//
//  TCBThemeableComponent.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import Foundation

protocol TCBThemeableComponent {
    associatedtype Style
    func theme(style: Style)
}
