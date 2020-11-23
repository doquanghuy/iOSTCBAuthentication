//
//  Observable+Extensions.swift
//  FastMobile
//
//  Created by Dinh Duong on 9/15/20.
//  Copyright © 2020 Huy Van Nguyen. All rights reserved.
//

import RxSwift
import RxCocoa

extension ObservableType where Element == Bool {
    /// Boolean not operator
    public func not() -> Observable<Bool> {
        return self.map { value -> Bool in
            return !value
        }
    }
}

extension ObservableType {

    func catchErrorJustComplete() -> Observable<Element> {
        return catchError { _ in
            return Observable.empty()
        }
    }

    func asDriverOnErrorJustComplete() -> Driver<Element> {
        return asDriver { _ in
            return Driver.empty()
        }
    }

    func mapToVoid() -> Observable<Void> {
        return map { _ in }
    }
}
