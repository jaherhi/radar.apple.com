import UIKit

protocol ApplicationProtocol {
    static var openSettingsURLString: String { get set }
}

protocol ViewProtocol {
    static var noIntrinsicMetric: CGFloat { get }
}

extension UIApplication: ApplicationProtocol {

}

extension UIView: ViewProtocol {

}
