//
//  QPAppDependencyContainer.swift
//  TCBPay
//
//  Created by Duong Dinh on 7/29/20.
//  Copyright © 2020 teddy. All rights reserved.
//

import UIKit
import TCBDomain

class AppDepedencyContainer {
    
    lazy var mainNavigationController: BaseNavigationViewController = {
        return BaseNavigationViewController()
    }()
    
    private let services: TCBDomain.UseCasesProvider
    
    init(services: TCBDomain.UseCasesProvider) {
        self.services = services
    }
    
    func makeFirstStepLogInViewController() -> FirstStepLogInViewController {
        let navigator = DefaultFirstStepLogInNavigator(services: services,
                                                       navigationController: mainNavigationController)
        let viewModel = FirstStepLoginViewModel(navigator: navigator,
                                                services: services)

        return FirstStepLogInViewController(viewModel: viewModel)
    }
    
    public func makeOnboardViewController() -> OnboardViewController {
        let navigator = DefaultOnboardNavigator(navigationController: mainNavigationController,
                                                loginViewController: makeFirstStepLogInViewController())
        let viewModel = OnboardViewModel(navigator: navigator)
        
        let onboardVC = OnboardViewController(viewModel: viewModel)
        mainNavigationController.setViewControllers([onboardVC], animated: false)
        return onboardVC
    }
}
