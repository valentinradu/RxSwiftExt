//
//  mergeWith.swift
//  RxSwiftExt
//
//  Created by Joan Disho on 12.05.18.
//  Copyright © 2018 RxSwiftCommunity. All rights reserved.
//

import Foundation
import RxSwift

extension Observable {
    /**
     Merges `self` with another observable.

     - parameter other: An other observable.
     - returns: A merged observable.
     */
    public func merge(with other: Observable<E>) -> Observable<E> {
        return Observable.merge(self, other)
    }
}
