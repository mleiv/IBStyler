//
//  Styles.swift
//  IBStylerDemo
//
//  Created by Emily Ivie on 8/11/15.
//
//  Licensed under The MIT License
//  For full copyright and license information, please see http://opensource.org/licenses/MIT
//  Redistributions of files must retain the above copyright notice.

import UIKit

/// -- REPLACE THIS FILE WITH YOUR OWN STYLES --
extension Styles {
    /// Define your app styles using names that indicate their usage rather than color, allowing for rapid app-wide restyling.
    public struct Colors {
    public static let normalColor = UIColor.black
    public static let tintColor = UIColor(red: 0.8, green: 0.0, blue: 0.0, alpha: 1.0)
    public static let tinterColor = UIColor(red: 0.6, green: 0.0, blue: 0.0, alpha: 1.0)
    public static let tintOppositeColor = UIColor.white
    public static let accentColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
    public static let altAccentColor = UIColor(red: 0.2, green: 0.3, blue: 0.9, alpha: 1.0)
    public static let linkColor = UIColor(red: 0.8, green: 0.0, blue: 0.0, alpha: 1.0)
    }
    
    /// Define your fonts using general style groups.
    /// Fonts are automatically scalable (property .hasAdjustableFontSize can remove this behavior).
    public struct Fonts {
        public struct body {
            public static let normalStyle = IBFont(style: .normal, size: .normal)
            public static let boldStyle = IBFont(style: .semiBold, size: .normal)
        }
        public struct title {
            public static let normalStyle = IBFont(style: .semiBold, size: .bigger)
        }
        public struct caption {
            public static let normalStyle = IBFont(style: .normal, size: .small)
            public static let boldStyle = IBFont(style: .semiBold, size: .small)
            public static let italicStyle = IBFont(style: .italic, size: .small)
        }
    }
    
    /// Pick some fancy custom fonts.
    public static var fontsList: [IBFont.Style: String] {
        return [
        .normal: "Avenir-Roman", // also -Book?
        .italic: "Avenir-Oblique",
        .medium: "Avenir-Medium",
        .mediumItalic: "Avenir-MediumOblique",
        .semiBold: "Avenir-Heavy",
        .semiBoldItalic: "Avenir-HeavyOblique",
        .bold: "Avenir-Black",
        .boldItalic: "Avenir-BlackOblique",
        ]
    }
    
    /// Style your app using general groups, or specific identifiers.
    /// Any style group can inherit from any other.
    public static var stylesList: [String: IBStyles.Properties] {
        return [
            // some generic styles
            "Button": [
                .font: Fonts.body.boldStyle,
                .textColor: Colors.tintColor,
                .padding: [0],
            ],
            "Label": [
                .font: Fonts.body.normalStyle,
                .textColor: Colors.normalColor,
            ],
            "TextField": [
                .font: Fonts.body.normalStyle,
                .textColor: Colors.tintColor,
            ],
            "TextView": [
                .inherit: ["Label"],
                .padding: [0],
            ],
            // some general styles
            "Caption.NormalColor": [
                .font: Fonts.caption.normalStyle,
                .textColor: Colors.normalColor,
            ],
            "Body.NormalColor": [
                .inherit: ["Label"],
            ],
            "Title.NormalColor": [
                .font: Fonts.title.normalStyle,
                .textColor: Colors.normalColor,
                .hasAdjustableFontSize: false,
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
                ] as IBStyles.Properties,
                .statePressed: [
                    .backgroundColor: Colors.tinterColor,
                    .textColor: Colors.tintColor,
                ] as IBStyles.Properties,
            ],
            "TextField.Bubbled": [
                .inherit: ["TextField"],
                .cornerRadius: 5.0,
                .borderWidth: 1.0,
                .borderColor: Colors.accentColor,
                .padding: [10.0],
            ],
            "TextView.Bubbled": [
                .inherit: ["TextView"],
                .cornerRadius: 5.0,
                .borderWidth: 2.0,
                .borderColor: Colors.normalColor,
                .backgroundColor: Colors.tintColor,
                .padding: [20.0],
            ],
            "Label.TextField": [
                .inherit: ["Label"],
                .font: Fonts.body.boldStyle,
                .textAlign: NSTextAlignment.right,
            ],
            // some more specific styles
            "Image.CircularFrame.50": [
                .cornerRadius: 25.0,
                .borderWidth: 2.0,
                .borderColor: Colors.normalColor,
                .backgroundColor: Colors.tintColor,
            ],
            "Label.FooterDate": [
                .font: Fonts.caption.italicStyle,
                .textColor: Colors.accentColor,
                .textAlign: NSTextAlignment.right,
            ],
            "Button.WithHeartImage": [
                .inherit: ["Button.Bubbled"],
                .backgroundGradient: IBGradient(direction: .vertical, colors: [Colors.tintColor, Colors.tinterColor]),
                .buttonImage: UIImage.ibSafeImage(named: "Heart")!,
                .padding: [17.0,20.0],
                .statePressed: [
                    .backgroundGradient: IBGradient(direction: .vertical, colors: [Colors.tinterColor, Colors.tintColor]),
                ] as IBStyles.Properties,
            ],
        ]
    }
    
    /// This function is key to general site styles, beyond using IBStylable elements.
    /// Just make sure it is called in AppDelegate application didFinishLaunchingWithOptions:
    public static func applyGlobalStyles(_ window: UIWindow?) {
        
        window?.tintColor = Colors.tintColor
        
        // apply general styles to things like UISegmentedControl and UINavigationItem using X.appearance()
        
    }
}
