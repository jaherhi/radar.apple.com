**Description**

A List inside a NavigationView presents its content with the default style. In this state the rows fill the width of the screen, and the List expands to the bottom of the view.

When adding a trailing navigationBarItem, the List style changes to SidebarListStyle, instead of keeping its previous style.

As a workaround, it's possible to use toolbar with a ToolbarItem placed with navigationBarTrailing to get the same UI without the change on the style.

The issue can be found when running a project in Xcode 12.0 beta (12A6159).

**Please list the steps you took to reproduce the issue:**

1. Open the attached project
2. Run the app on the simulator
3. Verify that the List is displayed as if SidebarListStyle had been set
4. Remove the navigationBarItems (line 11)
5. Run the app again
6. Verify that the style for the List has changed, and it's using the default style

**What did you expect to happen?**

I expected the List to keep the same style in both cases, with a navigationBarItem and without

**What actually happened?**

The List changes the style from its default style to SidebarListStyle
