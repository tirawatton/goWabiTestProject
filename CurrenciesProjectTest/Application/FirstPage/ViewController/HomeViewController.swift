import UIKit
import RxSwift
import RxCocoa

class HomeViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!

    private var viewModel: HomeListViewModel!
    private let disposeBag = DisposeBag()

    static func instantiate(for viewModel: HomeListViewModel) -> HomeViewController {
        let storyboard = UIStoryboard(name: .main, bundle: nil)
        let viewController = storyboard.instantiate(HomeViewController.self)
        viewController.viewModel = viewModel
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onTappedToNextPage(_ sender: UIButton) {

    }
}
