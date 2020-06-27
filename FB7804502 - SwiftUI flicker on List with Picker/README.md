**Description**

Using a picker to switch the content of a list that contains images generates an odd flicker below the navigation title.

A sample project and a video of the issue have been attached.

The issue can be found when running a project in Xcode 12.0 beta (12A6159).

**Please list the steps you took to reproduce the issue:**

1. Open the attached sample project
2. Run the app on the simulator
3. Tap on the picker options randomly
4. Observe an odd flickering of images under the navigation title

**What did you expect to happen?**

No flicker or images below the navigation title.

**What actually happened?**

There's an odd flickering with images appearing and disappearing when switching the content driven by the picker below the navigation title.
