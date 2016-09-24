//
//  UIWindow.swift
//
//  Created by Emily Ivie on 9/17/16.
//
//  Licensed under The MIT License
//  For full copyright and license information, please see http://opensource.org/licenses/MIT
//  Redistributions of files must retain the above copyright notice.

import UIKit

extension UIWindow {

    /// Interface Builder is tricky to deal with - be careful what you let it do in @IBDesignable classes.
    /// For example: no listeners, no core data.
    static var isInterfaceBuilder: Bool {
        #if TARGET_INTERFACE_BUILDER
            return true
        #else
            return false
        #endif
    }

}
