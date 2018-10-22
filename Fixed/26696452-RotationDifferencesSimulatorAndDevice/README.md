Summary:
The rotation behaviour is different between iPad and the iOS Simulator. When running an app with a single view controller configured with supportedInterfaceOrientations to return only portrait, the iOS simulator allows to rotate to landscape, while a device doesn't rotate

Steps to Reproduce:
1. Open sample app
2. Run app on an iPad simulator
3. Rotate
4. Run app on an iPad device
5. Rotate

Expected Results:
The rotation behaviour should be the same on both cases, it should stay in portrait when the device or the simulator is rotated

Actual Results:
The rotation behaviour is different. It should stay in portrait when running the app on the simulator

Version:
Xcode 7.3.1 (7D1014)
