//
//  QPLoginViewModel.swift
//  TCBPay
//
//  Created by Duong Dinh on 7/29/20.
//  Copyright © 2020 teddy. All rights reserved.
//

import Foundation
import RxSwift
import RxRelay
import RxCocoa
import TCBDomain
import TCBService

class FirstStepLoginViewModel: ViewModelType {
    
    struct Input {
        let usernameTrigger: Driver<String>
        let continueTrigger: Driver<Void>
    }
    
    struct Output {
        let firstStepSuccess: Driver<String>
        let continueEnabled: Driver<Bool>
        let isCheckingAccountUsername: Driver<Bool>
    }
    
    private let navigator: FirstStepLogInNavigator
    private let services: TCBDomain.UseCasesProvider
    
    init(navigator: FirstStepLogInNavigator, services: TCBDomain.UseCasesProvider) {
        self.navigator = navigator
        self.services = services
    }
    
    func transform(input: Input) -> Output {
        _ = services.makeLoginUseCase()
        let activityIndicator = ActivityIndicator()
        let username = input.usernameTrigger
        let processContinue = input.continueTrigger.withLatestFrom(username)
            .do(onNext: navigator.goNext(username:))
        
        let canContinue = username.map { username in
            return self.validate(username)
        }

        
        return Output(firstStepSuccess: processContinue,
                      continueEnabled: canContinue,
                      isCheckingAccountUsername: activityIndicator.asDriver())
    }
}

// MARK: - Internal
extension FirstStepLoginViewModel {
    private func validate(_ username: String) -> Bool {
        return !username.isEmpty
    }
}
