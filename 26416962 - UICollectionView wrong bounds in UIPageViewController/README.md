Summary:
Using storyboards, when a UIViewController, which contains a UICollectionView, is used in a UIPageViewController which is added as a child view controller of a UIViewController, and the user navigates to the detail view controller of the items in the UICollectionView and rotates, the bounds for the UICollectionView turns out to be wrong

Steps to Reproduce:
1. Download the sample code
2. Build and run the app in portrait
3. Rotate to landscape
4. Rotate back to portrait
5. Tap any cell
6. Rotate the device or simulator to landscape
7. Tap the back button
8. Notice the layout is different than the one showed when the device or simulator was rotated the first time

Expected Results:
The layout should be the same on both cases, when the device or simulator is rotated while the collection view is visible and when the device or simulator is rotated while the detail view controller is visible 

Actual Results:
The layout is different on both cases because the bounds for the collection view are different in collectionView:collectionViewLayout:sizeForItemAtIndexPath:

Version:
9.3.2 (13F69)

Notes:
This behaviour doesn't happen if the UIPageViewController is the root view controller of the UINavigationController. To reproduce this case:

1. Download the sample code
2. Remove the segue in Main.storyboard between UINavigationController and ViewController
3. Add a root view controller segue between UINavigationController and PageViewController
4. Build and run the app in portrait
5. Rotate to landscape
6. Rotate back to portrait
7. Tap any cell
8. Rotate the device or simulator to landscape
9. Tap the back button
10. Notice the layout is the same that was showed when the device or simulator was rotated the first time

Configuration:
iPhone 5 16GB with iOS 9.3.2 (13F69), iOS Simulator 9.3, 8.4 and 8.1, Xcode 7.3.1 (7D1014)
