//
//  TCBBoxList.swift
//  FastMobile
//
//  Created by Thuy Truong Quang on 10/25/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import Foundation
import UIKit

class TCBBoxList: UIView, TCBBoxListBuilder {
    var totalItem: Int = 4
    private let defaultSpace: CGFloat = 16
    private var listBox = [TCBBoxItem]()
    init(totalItem: Int) {
        self.totalItem = totalItem
        super.init(frame: .zero)
        
        self.preapareUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.preapareUI()
    }
    
    func vibrate() {
        
    }
    
    func reset() {
        
    }
    
    func getStringCode() -> String {
        return ""
    }
    
    private func preapareUI() {
        self.listBox.removeAll()
        let stackView = UIStackView()
        stackView.frame = self.frame
        stackView.alignment = .center
        stackView.spacing = self.defaultSpace
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        
        for _ in 0..<self.totalItem {
            let item = TCBBoxItem(value: "")
            self.listBox.append(item)
            stackView.addArrangedSubview(item)
        }
        
        addSubview(stackView)
        
        let textField = UITextField(frame: stackView.frame)
        addSubview(textField)
        textField.layer.backgroundColor = UIColor.clear.cgColor
        textField.tintColor = .clear
        textField.textColor = .clear
        textField.delegate = self
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        let lastIndex = textField.text!.count - 1
        if lastIndex >= 0 {
            self.listBox[lastIndex].value = textField.text!
        }
    }
}

extension TCBBoxList: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let maxLength = self.totalItem
        let currentString: NSString = textField.text! as NSString
        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
}
