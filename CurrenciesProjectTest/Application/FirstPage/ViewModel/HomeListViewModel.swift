import Foundation
import RxSwift

final class HomeListViewModel {
    private var service: HomeServiceProtocol

    init(service: HomeServiceProtocol = HomeService()) {
        self.service = service
    }

    func fetchCurrenciesViewModel() -> Observable<[HomeViewModel]> {
        service.fetchCurrencies().map { $0.currencies.map {
            return HomeViewModel(model: $0)
        }}
    }
}
