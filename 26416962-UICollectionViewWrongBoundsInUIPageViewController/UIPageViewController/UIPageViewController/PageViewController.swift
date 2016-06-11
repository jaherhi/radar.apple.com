import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewControllerWithIdentifier(String(CollectionViewController))
        self.setViewControllers([viewController], direction: .Forward, animated: false, completion: nil)
    }
}
