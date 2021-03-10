import Foundation
import Alamofire
import RxSwift

public struct Empty: Decodable {}

class ApiRequest {
    static func request<T: Decodable>(_ router: ApiRouter,
                                       decoder: JSONDecoder = JSONDecoder()) -> Observable<T> {

        return Observable<T>.create { observe in
            URLCache.shared.removeAllCachedResponses()

            let request = AF.request(router).responseDecodable(decoder: decoder) { (response: DataResponse<T, AFError>) in

                let statusCode = response.response?.statusCode
                print(statusCode ?? 0)
                switch response.result {
                case .failure(let error):
                    observe.onError(error)
                case .success(let result):
                    observe.onNext(result)
                    observe.onCompleted()
                }
            }

            return Disposables.create {
                request.cancel()
            }
        }
    }
}
