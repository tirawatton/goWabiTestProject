import Foundation

struct SecondPageViewModel {
    private var model: ServicesModel

    init(model: ServicesModel) {
        self.model = model
    }

    var name: String {
        return model.name
    }

    var price: String {
        return model.price
    }
}
