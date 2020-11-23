//
//  LogInNavigator.swift
//  FastMobile
//
//  Created by Duong Dinh on 10/30/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import Foundation
import TCBDomain
import TCBComponents
import TCBService

protocol SignInNavigator {
    func showError(_ error: Error)
    func goHome(user: User)
    var actionAfterLogin: ((User) -> Void)? { get }
}

extension Notification.Name {
    static let didFailLogin = Notification.Name("didFailLogin")
}

class DefaultSignInNavigator: SignInNavigator {
    
    var actionAfterLogin: ((User) -> Void)? = nil
    
    private let services: TCBDomain.UseCasesProvider
    private let navigationController: UINavigationController

    init(services: TCBDomain.UseCasesProvider,
         navigationController: UINavigationController) {
        self.services = services
        self.navigationController = navigationController
    }

    func showError(_ error: Error) {
        TCBAuthenticationManager.shared.delegate?.didLoginFailure(error)
    }
    
    func goHome(user: User) {
        TCBAuthenticationManager.shared.delegate?.didLoginSuccessfully()
    }
}
