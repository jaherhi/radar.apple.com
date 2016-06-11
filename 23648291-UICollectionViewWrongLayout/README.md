Summary:
Using storyboards, the position for the items in a UICollectionView turns out to be wrong when the UICollectionView is a subview of a UIViewController embeded in a UINavigationController.

Steps to Reproduce:
1. Download the sample code
2. Run the app

Expected Results:
The items in UICollectionView should appear with a distance of zero from the top

Actual Results:
The items in UICollectionView appear with some distance from the top, approximately the size of the navigation bar

Version:
Xcode Version 7.1.1 (7B1005)
iPhone 5 iOS 9.1 (13B143)
Simulator iOS 9.1 (13B137)
OS X 10.11.1 (15B42)

Notes:
The workaround is to set the top constraint to a value of -64

Configuration:
This happens on both the iOS Simulator and a device
