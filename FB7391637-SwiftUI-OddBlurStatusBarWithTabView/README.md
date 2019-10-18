**Description**

Using a List inside a NavigationView inside a TabView produces an odd behaviour between navigation bar and status bar. The navigation bar behaves as expected and shows the cells below it with a blur applied to the cells. The status bar does not behaves as expected and does not show the cells below it, producing a clear differentiation between navigation bar and status bar when the cells move below them.

When the TabView is removed, and the List is only inside a NavigationView, the status bar and the navigation bar behaves as one, both showing the cells below them.

**Please list the steps you took to reproduce the issue:**

1. Open attached sample project
2. Run the app
3. Scroll the list to see the cells below the navigation bar and the status bar

**What did you expect to happen?**

The navigation bar and the status bar behave the same, and allow cells to be blurred below both navigation and status bars

**What actually happened?**

The status bar does not behaves as expected and does not show the cells below it, producing a clear differentiation between navigation bar and status bar when the cells move below them.
