# IBStyler

**iOS Swift 4.2 library to create app-wide styles easily visible in the Interface Builder**

Although this library was inspired by web design CSS, its purpose is rather to provide a general style guide compatible with Interface Builder, allowing app creators to utilize autolayout and size classes and all the great built-in Xcode features, without all the tedium of having to recreate page styling on every page. 

Also, by default it scales all the fonts to user-preferred sizing.

![Example](/screenshots/SampleView.png?raw=true)

## Including in Your App

I am not a big fan of the basket-of-third-party-libraries approach to iOS dev. So this isn't on CocoaPods or Carthage. Put it in your app yourself and use it as a starting point for your own great ideas, rather than as a stagnant black box of magic sauce that breaks every time Swift changes. 

See Styles.swift for how to customize the styles for your own purposes. See IBFormFieldPair.swift for how to extend it to provide new, effort-saving subclasses.


## Example in 3 Steps

1. Create your styles in the Styles.swift file.

```swift
public static var styles: [String: IBStyleProperty.List] {
        return [
            "Button": [ // default style for all IBStyledButton elements
                .font: Fonts.body.boldStyle,
                .textColor: Colors.tintColor,
                .padding: [0],
            ],
            "Button.Bubbled": [
                .inherit: ["Button"],
                .textColor: Colors.normalColor,
                .cornerRadius: 5.0,
                .borderWidth: 2.0,
                .borderColor: Colors.normalColor,
                .backgroundColor: Colors.tintColor,
                .padding: [20.0],
                .stateDisabled: [
                    .textColor: Colors.normalColor.withAlphaComponent(0.4),
                    .backgroundColor: Colors.tintColor.withAlphaComponent(0.4),
                    .borderColor: Colors.normalColor.withAlphaComponent(0.4),
                ] as IBStyleProperty.List,
                .statePressed: [
                    .backgroundColor: Colors.tinterColor,
                    .textColor: Colors.tintColor, // requires "Custom" buttonType to work
                ] as IBStyleProperty.List,
            ],
            "Button.WithHeartImage": [
                .inherit: ["Button.Bubbled"],
                .backgroundGradient: IBGradient(direction: .vertical, colors: [Colors.tintColor, Colors.tinterColor]),
                .buttonImage: UIImage.ibSafeImage(named: "Heart"), // Interface Builder has issues finding code-created images
                .padding: [17.0, 20.0],
                .statePressed: [
                    .backgroundGradient: IBGradient(direction: .vertical, colors: [Colors.tinterColor, Colors.tintColor]),
                ] as IBStyleProperty.List,
            ],
        ]
    }
```

2. Assign your UIKit element to the IBStyled equivalent class.
![Declare the IBStyled class](/screenshots/SampleIB1.png?raw=true)

3. Add the style name to the Identifier property. In this instance, I also selected the "Temp Pressed" preview option for buttons.
![Declare the IBStyled class](/screenshots/SampleIB2.png?raw=true)


## Future Goals

I am currently working on a Markdown addition, to allow for nicely styled UITextViews.