//
//  OnboardViewModel.swift
//  FastMobile
//
//  Created by Pham Thanh Hoa on 10/30/20.
//  Copyright © 2020 Techcombank. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class OnboardViewModel: ViewModelType {
    
    struct Input {
        let loginTrigger: Driver<Void>
    }
    
    struct Output {
        let gotoLogin: Driver<Void>
    }

    let navigator: OnboardNavigator
    
    init(navigator: OnboardNavigator) {
        self.navigator = navigator
    }
    
    func transform(input: Input) -> Output {
        let gotoLogin = input.loginTrigger.do(onNext: navigator.goLogin)
        return Output(gotoLogin: gotoLogin)
    }
}
