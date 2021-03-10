import Alamofire

protocol ApiConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
}

enum ApiRouter: ApiConfiguration {

    case currencies
    case productsTH
    case productsEUR
    case productsUSD

    // MARK: - HTTPMethod
    internal var method: HTTPMethod {
        switch self {
        case .currencies:
            return .get
        case .productsTH:
            return .get
        case .productsEUR:
            return .get
        case .productsUSD:
            return .get
        }
    }

    // MARK: - Path
    internal var path: String {
        switch self {
        case .currencies:
            return "604717ce00e5956cd887ad04"
        case .productsTH:
            return "6048705100e5956cd8896472"
        case .productsEUR:
            return "604870c600e5956cd88964d2"
        case .productsUSD:
            return "604870af7ea6546cf3d91299"
        }
    }

    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try K.Dev.baseURL.asURL()

        var urlRequest = URLRequest(url: url.appendingPathComponent(path))

        // HTTP Method
        urlRequest.httpMethod = method.rawValue

        // HTTP HTTPHeaderField
        urlRequest.setValue(ContentType.contentTypeValue.rawValue, forHTTPHeaderField: HTTPHeaderField.secretKey.rawValue)

        return urlRequest
    }
}
