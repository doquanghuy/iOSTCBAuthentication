//
//  OnboardNavigator.swift
//  FastMobile
//
//  Created by Pham Thanh Hoa on 10/30/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import Foundation
import UIKit

protocol OnboardNavigator {
    var shouldShowNavigationBar: Bool { get }
    func goLogin()
}

class DefaultOnboardNavigator: OnboardNavigator {
    
    private let navigationController: UINavigationController
    private let loginViewController: FirstStepLogInViewController
    
    init(navigationController: UINavigationController,
         loginViewController: FirstStepLogInViewController) {
        self.navigationController = navigationController
        self.loginViewController = loginViewController
    }
    
    var shouldShowNavigationBar: Bool = false
    
    func goLogin() {
        navigationController.pushViewController(loginViewController, animated: true)
    }
}
