//
//  TCBCardSliderStyle.swift
//  TCBComponents
//
//  Created by vuong on 11/18/20.
//

import UIKit

public protocol TCBCardSliderStyle {
    var collectionViewBackgroundColor: UIColor { get }
    var pageControlBackgroundColor: UIColor { get }
    var pageControlCurrentPageIndicatorTintColor: UIColor { get }
}

public struct TCBCardSliderDefaultStyle: TCBCardSliderStyle{
    public var pageControlCurrentPageIndicatorTintColor: UIColor = UIColor(hexString: "334955")
    
    public var collectionViewBackgroundColor: UIColor = UIColor.clear
    
    public var pageControlBackgroundColor: UIColor = UIColor.clear
}
