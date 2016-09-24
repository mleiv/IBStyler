//
//  UIImage.swift
//
//  Created by Emily Ivie on 9/23/16.
//
//  Licensed under The MIT License
//  For full copyright and license information, please see http://opensource.org/licenses/MIT
//  Redistributions of files must retain the above copyright notice.

import UIKit

extension UIImage {
    /// Interface Builder can't find image files when they are created via code.
    /// So, specify a class in the same package as the image file (here, AppDelegate), and IB will show the image.
    public static func ibSafeImage(named name: String) -> UIImage? {
        return UIImage(named: name, in: Bundle(for: AppDelegate.self), compatibleWith: nil)
    }
}
