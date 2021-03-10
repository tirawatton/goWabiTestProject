import Foundation

struct CurrenciesModel: Decodable {
    var id: Int
    var currency: String

    private enum CodingKeys: String, CodingKey {
        case id
        case currency = "label"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let id = try container.decode(Int.self, forKey: .id)
        let currency = try container.decode(String.self, forKey: .currency)

        self.id = id
        self.currency = currency
    }
}
