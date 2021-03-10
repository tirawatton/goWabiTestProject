import Foundation

struct SecondPageModel: Decodable {
    var services: [ServicesModel]
}

struct ServicesModel: Decodable {
    var id: Int
    var currencyId: Int
    var name: String
    var price: String

    private enum CodingKeys: String, CodingKey {
        case id
        case currencyId = "currency_id"
        case name
        case price
    }
}
