/*:
 > # IMPORTANT: To use `RxSwiftExtPlayground.playground`, please:

 1. Make sure you have [Carthage](https://github.com/Carthage/Carthage) installed
 1. Fetch Carthage dependencies from shell: `carthage bootstrap --platform ios`
 1. Build scheme `RxSwiftExtPlayground` scheme for a simulator target
 1. Choose `View > Show Debug Area`
 */

//: [Previous](@previous)

import RxSwift
import RxSwiftExt

/*:
 ## merge(with:)
 Merges the specified observable with another one.

 */
example("merge values") {
    let oddNumbers = [1, 3, 5, 7, 9]
    let evenNumbers = [2, 4, 6, 8, 10]

    let oddStream = Observable.from(oddNumbers)
    let evenStream = Observable.from(evenNumbers)

    oddStream.merge(with: evenStream)
        .subscribe(onNext: { result in
            print(result)
        })
}

//: [Next](@next)
