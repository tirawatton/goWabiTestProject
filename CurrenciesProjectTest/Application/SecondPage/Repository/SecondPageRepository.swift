import Foundation
import RxSwift

protocol SecondPageServiceProtocol {
    func fetchProductsWithTHB() -> Observable<SecondPageModel>
    func fetchProductsWithEUR() -> Observable<SecondPageModel>
    func fetchProductsWithUSD() -> Observable<SecondPageModel>
}

class SecondPageService: SecondPageServiceProtocol {
    func fetchProductsWithEUR() -> Observable<SecondPageModel> {
        ApiRequest.request(.productsEUR)
    }

    func fetchProductsWithTHB() -> Observable<SecondPageModel> {
        ApiRequest.request(.productsTH)
    }

    func fetchProductsWithUSD() -> Observable<SecondPageModel> {
        ApiRequest.request(.productsUSD)
    }
}
