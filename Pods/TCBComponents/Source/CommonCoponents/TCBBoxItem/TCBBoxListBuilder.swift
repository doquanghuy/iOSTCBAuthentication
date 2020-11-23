//
//  TCBBoxListBuilder.swift
//  FastMobile
//
//  Created by Thuy Truong Quang on 10/23/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import Foundation
import UIKit

protocol TCBBoxListBuilder {
    var totalItem: Int { get set }
    
    func vibrate()
    func reset()
    func getStringCode() -> String
}
