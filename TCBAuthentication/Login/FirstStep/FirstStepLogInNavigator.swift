//
//  FirstStepLogInNavigator.swift
//  FastMobile
//
//  Created by Duong Dinh on 10/30/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import UIKit
import TCBDomain
import TCBService
import TCBComponents

protocol FirstStepLogInNavigator {
    func goNext(username: String)
    func showError(_ error: Error, additionalInfo: String?)
    var actionAfterLogin: ((User) -> Void)? { get }
}

extension FirstStepLogInNavigator {
    func showError(_ error: Error, additionalInfo: String? = nil) {
        self.showError(error, additionalInfo: additionalInfo)
    }
}

class DefaultFirstStepLogInNavigator: FirstStepLogInNavigator {
    
    var actionAfterLogin: ((User) -> Void)? = nil
    
    private let navigationController: UINavigationController
    private let services: TCBDomain.UseCasesProvider

    init(services: TCBDomain.UseCasesProvider,
         navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.services = services
    }

    func makeSignInViewController(userName: String) -> LoginViewController {
        let navigator = DefaultSignInNavigator(services: services,
                                               navigationController: navigationController)
        let viewModel = LoginViewModel(useCase: services.makeLoginUseCase(), navigator: navigator, userName: userName)

        return LoginViewController(viewModel: viewModel)
    }
    
    func showError(_ error: Error, additionalInfo: String? = nil) {
        DispatchQueue.main.async {
            var errorMessage = error.message
            if let errorEntity = error as? ErrorEntity {
                errorMessage = errorEntity.errorDescription
            }
                
            let icon: UIImage? = additionalInfo != nil ? UIImage(named: "ic_greenarrow", in: .main, with: nil) : nil
            
            let duration: Double = additionalInfo != nil ? 5 : 2
            let message = TCBNudgeMessage(title: "",
                                         subtitle: errorMessage,
                                         type: .error,
                                         duration: duration,
                                         tapIcon: icon,
                                         onTap: {
                                            guard let _ = additionalInfo else { return }
                                         },
                                         onDismiss: nil)
            TCBNudge.show(message: message)
        }
    }
    
    func goNext(username: String) {
        navigationController.pushViewController(makeSignInViewController(userName: username), animated: true)
    }
}

