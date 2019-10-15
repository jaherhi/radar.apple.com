**Description**

Text behaves differently when it is inside a ScrollView and when it is outside of it.

When using Text, by default, it'll use as many lines as it needs, but when the Text is placed inside a ScrollView, by default, it'll only use one line unless set explicitly.

**Please list the steps you took to reproduce the issue:**

1. Open the attached project
2. Run the app
3. Check the difference in layout between the Text inside a VStack, on top, and the Text inside a ScrollView.

**What did you expect to happen?**

I expected the same behaviour for Text, independently of the view containing it

**What actually happened?**

Text behaviour for line limit changes depending on the view that contains it
