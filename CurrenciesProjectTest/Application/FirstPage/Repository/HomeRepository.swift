import Foundation
import RxSwift

protocol HomeServiceProtocol {
    func fetchCurrencies() -> Observable<HomeModel>
}

class HomeService: HomeServiceProtocol {
    func fetchCurrencies() -> Observable<HomeModel> {
        ApiRequest.request(.currencies)
    }
}
