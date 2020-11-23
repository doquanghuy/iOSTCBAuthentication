//
//  TCBPasscodeStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

public protocol TCBPasscodeStyle {
    var emptyColor: UIColor { get }
    var checkedColor: UIColor { get }
}

public struct TCBPasscodeDefaultStyle: TCBPasscodeStyle {
    public let emptyColor: UIColor = .gray
    public let checkedColor: UIColor = .black
}
