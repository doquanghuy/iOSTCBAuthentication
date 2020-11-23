//
//  TCBAuthenticationManager.swift
//  TCBAuthentication
//
//  Created by vuong on 11/23/20.
//

import UIKit
import TCBService

public protocol TCBAuthenticationManagerDelegate: AnyObject {
    func didLoginSuccessfully()
    func didLoginFailure(_ error: Error)
}

public class TCBAuthenticationManager {
    public static let shared = TCBAuthenticationManager()
    
    public weak var delegate: TCBAuthenticationManagerDelegate?
    
    let appDepedencyContainer = AppDepedencyContainer(services: TCBUseCasesProvider())
    
    public func getOnboardViewController() -> UIViewController {
        return appDepedencyContainer.makeOnboardViewController()
    }
    
}
