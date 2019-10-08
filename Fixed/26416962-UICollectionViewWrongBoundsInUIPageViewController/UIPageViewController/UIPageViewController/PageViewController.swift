import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: CollectionViewController.self))
        self.setViewControllers([viewController], direction: .forward, animated: false, completion: nil)
    }
}
