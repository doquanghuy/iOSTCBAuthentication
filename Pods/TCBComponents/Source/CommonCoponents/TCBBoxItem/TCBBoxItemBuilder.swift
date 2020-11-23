//
//  TCBBoxItemBuilder.swift
//  FastMobile
//
//  Created by Thuy Truong Quang on 10/23/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import Foundation
import UIKit

protocol TCBBoxItemBuilder {
    func setItemColor(by color: UIColor)
    func setLineColor(by color: UIColor)
    func setItemSize(size: CGSize)
}
