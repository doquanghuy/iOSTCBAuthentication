//
//  UseCaseProvider.swift
//  Domain
//
//  Created by vuong on 10/15/20.
//

import Foundation

public protocol UseCasesProvider {
    func makeLoginUseCase() -> LoginUseCase
    func makeAccountUseCase() -> AccountUseCase
    func makeRecentActivityUseCase() -> RecentActivityUseCase
    func makeRegisterUseCase() -> RegisterUseCase
    func makeProfileUseCase() -> ProfileUseCase
    func makeConfigurationUseCase() -> ConfigurationUseCase
    func makePaymentUseCase() -> PaymentUseCase
    func makeFiresbaseUseCase() -> FirebaseUseCase
    func makeContactUseCase() -> DBSContactUseCase
    func makeAuditUseCase() -> AuditUseCase
}
