**Description**

Using a NavigationView and a NavigationLink, when the content on the destination view has a scroll view and the content can be scrolled below the navigation bar, the content appears above the navigation bar, overlapping the back button and the large title.

Using inline as display mode does not present the same issue as the navigation bar applies a blur to the content below it.

The issue appears on Xcode 11.0 beta 5 (11M382q).

**Please list the steps you took to reproduce the issue:**
1. Open attached project
2. Run the app
3. Press on any item on the list
4. Scroll the content

**What did you expect to happen?**

When scrolling the content below the navigation bar, the navigation bar is presented above the content, applying a blur to the view below it.

**What actually happened?**

When scrolling the content below the navigation bar, the navigation bar is presented below the content, overlapping the title and back button.
