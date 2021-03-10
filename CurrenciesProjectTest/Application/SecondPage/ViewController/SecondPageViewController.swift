import UIKit
import RxCocoa
import RxSwift

class SecondPageViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private var viewModel: SecondPageListViewModel!
    private let disposeBag = DisposeBag()

    static func instantiate(for viewModel: SecondPageListViewModel) -> SecondPageViewController {
        let storyboard = UIStoryboard(name: .main, bundle: nil)
        let viewController = storyboard.instantiate(SecondPageViewController.self)
        viewController.viewModel = viewModel
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.fetchServicesWithTHBViewModel()
            .observe(on: MainScheduler.instance)
            .bind(to: tableView.rx.items(cellIdentifier: "Cell", cellType: UITableViewCell.self)) { [weak self] row, element, cell in
                cell.textLabel?.text = element.name
                cell.detailTextLabel?.text = element.price
            }
            .disposed(by: disposeBag)
    }
}
