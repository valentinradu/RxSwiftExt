//
//  reachedBottom.swift
//  RxSwiftExt-iOS
//
//  Created by Joan Disho on 17.08.18.
//  Copyright © 2018 RxSwiftCommunity. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UIScrollView {
    /**
     Shows if the the bottom of the UIScrollView is reached.

     - parameter offset: A threshhold indicating the bottom.
     - returns: A boolean value showing if the bottom is reached or not.
     */
    
    func reachedBottom(_ offset: CGFloat = 0.0) -> ControlEvent<Bool> {
        let observable = contentOffset
            .map { [weak base] contentOffset -> Bool in
                guard let scrollView = base else { return false }
                let visibleHeight = scrollView.frame.height
                    - scrollView.contentInset.top
                    - scrollView.contentInset.bottom
                let y = contentOffset.y + scrollView.contentInset.top
                let threshold = max(offset, scrollView.contentSize.height - visibleHeight)

                return y > threshold
        }

        return ControlEvent(events: observable.distinctUntilChanged())
    }
}
