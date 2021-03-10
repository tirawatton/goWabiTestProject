import UIKit

final class HomeCoordinator: Coordinator {

    private(set) var childCoordinator: [Coordinator] = []
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func startViewController() {
        let viewController = HomeViewController.instantiate(for: HomeListViewModel())
        navigationController.navigationBar.isTranslucent = false
        navigationController.setViewControllers([viewController], animated: false)
    }
}
