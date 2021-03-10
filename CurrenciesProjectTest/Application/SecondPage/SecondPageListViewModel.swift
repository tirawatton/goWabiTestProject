import Foundation
import RxSwift

final class SecondPageListViewModel {
    private var service: SecondPageServiceProtocol

    init(service: SecondPageServiceProtocol = SecondPageService()) {
        self.service = service
    }

    func fetchServicesWithTHBViewModel() -> Observable<[SecondPageViewModel]> {
        service.fetchProductsWithTHB().map { $0.services.map {
         return SecondPageViewModel(model: $0)
        }}
    }

    func fetchServicesWithEURViewModel() -> Observable<[SecondPageViewModel]> {
        service.fetchProductsWithEUR().map { $0.services.map {
         return SecondPageViewModel(model: $0)
        }}
    }

    func fetchServicesWithUSDViewModel() -> Observable<[SecondPageViewModel]> {
        service.fetchProductsWithUSD().map { $0.services.map {
         return SecondPageViewModel(model: $0)
        }}
    }
}
