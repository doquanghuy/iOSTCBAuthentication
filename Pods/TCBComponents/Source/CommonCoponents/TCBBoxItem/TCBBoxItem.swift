//
//  TCBBoxItem.swift
//  FastMobile
//
//  Created by Thuy Truong Quang on 10/23/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import Foundation
import UIKit

class TCBBoxItem: UIView, TCBBoxItemBuilder {
    
    // MARK: - Life cirles
    var value: String = "" {
        didSet {
            self.setItemColor(by: .black)
            self.setLineColor(by: .black)
        }
    }
    private let lineHeight: CGFloat = 2
    private var size: CGSize = .init(width: 50, height: 50)
    private var itemColor: UIColor = .segmentBackground
    private var lineColor: UIColor = .segmentBackground
    private var inactiveColor: UIColor = .segmentBackground
    
    private lazy var contentLabel = UILabel()
    private lazy var lineView = UIView()
    
    // MARK: - Initizable
    init(value: String) {
        super.init(frame: .zero)
        self.value = value
        self.prepareUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Don't using interface builder")
    }
    
    // MARK: - Functions
    private func prepareUI() {
        let contentView = makeContentView()
        addSubview(contentView)
        
        self.reloadInputViews()
    }
    
    private func makeContentView() -> UIView {
        let contentView = UIView()
        contentView.frame = CGRect(x: 0,
                                   y: 0,
                                   width: self.size.width,
                                   height: self.size.height)
        
        contentView.addSubview(contentLabel)
        contentLabel.frame = contentView.frame
        contentLabel.center = contentView.center
        contentLabel.text = "●"
        contentLabel.textAlignment = .center
        contentLabel.textColor = self.inactiveColor
        
        lineView.frame = CGRect(x: 0, y: contentView.frame.height - self.lineHeight, width: contentView.frame.width, height: self.lineHeight)
        lineView.backgroundColor = self.inactiveColor
        contentView.addSubview(lineView)
        
        return contentView
    }
    
    func setItemColor(by color: UIColor) {
        self.itemColor = self.value.isEmpty ? self.inactiveColor : color
        self.contentLabel.textColor = self.itemColor
        self.reloadInputViews()
    }
    
    func setLineColor(by color: UIColor) {
        self.lineColor = self.value.isEmpty ? self.inactiveColor : color
        self.lineView.backgroundColor = self.lineColor
        self.reloadInputViews()
    }
    
    func setItemSize(size: CGSize) {
        self.size = size
        self.reloadInputViews()
    }
}
