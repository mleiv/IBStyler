//
//  AppDelegate.swift
//  IBStylerDemo
//
//  Created by Emily Ivie on 9/17/16.
//  Copyright © 2016 urdnot. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Styles.applyGlobalStyles(window)
        return true
    }

}

