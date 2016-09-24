# IBStyler

**An iOS Swift 3.0 library to create app-wide styles easily visible in the Interface Builder**

Although this library was inspired by web design CSS, its purpose is rather to provide a general style guide compatible with Interface Builder, allowing app creators to utilize autolayout and size classes and all the great built-in Xcode features, without all the tedium of having to recreate page styling on every page.

![Example](/IBStyler/master/SampleView.png?raw=true)

## Including in Your App

I am not a big fan of the basket-of-third-party-libraries approach to iOS dev (In fact, this has been the single point of rejection in all my job interviews, because for some reason all y'all love your third party casseroles just that much. Yay for you!). So this isn't on CocoaPods or Carthage. Put it in your damn app yourself and use it as a starting point for your own great ideas, rather than as a stagnant black box of magic sauce that breaks every time Swift changes. 

See Styles.swift for how to customize the styles for your own purposes. See IBFormFieldPair.swift for how to extend it to provide new, effort-saving subclasses.

## Future Goals

I am currently working on a Markdown addition, to allow for nicely styled UITextViews.