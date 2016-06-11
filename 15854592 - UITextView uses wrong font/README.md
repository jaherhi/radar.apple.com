Summary:
When using a non editable and non selectable UITextView with a font family or size different from the default one in a storyboard, if the text is set in code, the font used is the default one, not the one selected in the storyboard

Steps to Reproduce:
1. Open the sample code
2. Run the app

Expected Results:
The text should be bold and the font size should be 25, as selected in the storyboard

Actual Results:
The font is not bold and the size is not 25

Version:
iOS 9.3 and Xcode 7.3.1 (7D1014)

Notes:
Changing the font for the UITextView after the text is set solves this issue
