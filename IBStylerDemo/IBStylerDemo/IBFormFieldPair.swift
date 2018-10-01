//
//  IBFormFieldPair.swift
//  IBStylerDemo
//
//  Created by Emily Ivie on 9/19/16.
//
//  Licensed under The MIT License
//  For full copyright and license information, please see http://opensource.org/licenses/MIT
//  Redistributions of files must retain the above copyright notice.

import UIKit

@IBDesignable
open class IBFormFieldPair: UIStackView {

    @IBInspectable
    open var label: String? {
        didSet {
            labelElement?.text = "\(label ?? "Field"): "
        }
    }
    
    @IBInspectable
    open var labelWidth: CGFloat = 0.0 {
        didSet {
            if let labelWidthConstraint = self.labelWidthConstraint {
                labelElement?.removeConstraint(labelWidthConstraint)
            }
            if labelWidth > 0 {
                labelWidthConstraint = labelElement?.widthAnchor.constraint(equalTo: widthAnchor, multiplier: labelWidth)
                labelWidthConstraint?.isActive = true
            } else {
                labelWidthConstraint = labelElement?.widthAnchor.constraint(equalToConstant: 0.0)
                labelWidthConstraint?.priority = UILayoutPriority(rawValue: 100)
                labelWidthConstraint?.isActive = true
            }
        }
    }
    
    @IBInspectable
    open var value: String? {
        didSet {
            fieldElement?.text = value
        }
    }
    
    @IBInspectable
    open var hint: String? {
        didSet {
            fieldElement?.placeholder = hint
        }
    }
    
    public var labelElement: UILabel?
    public var fieldElement: UITextField?
    public var labelWidthConstraint: NSLayoutConstraint?

    override open func layoutSubviews() {
        setup()
        super.layoutSubviews()
    }
    
    open func setup() {
        spacing = 10.0
        if labelElement == nil {
            let labelElement = IBStyledLabel(identifier: "Label.TextField")
            self.labelElement = labelElement
            labelElement.text = "\(label ?? "Field"): "
            addArrangedSubview(labelElement)
            if labelWidth > 0 {
                labelWidthConstraint = labelElement.widthAnchor.constraint(equalTo: widthAnchor, multiplier: labelWidth)
                labelWidthConstraint?.isActive = true
            } else {
                labelWidthConstraint = labelElement.widthAnchor.constraint(equalToConstant: 0.0)
                labelWidthConstraint?.priority = UILayoutPriority(rawValue: 100)
                labelWidthConstraint?.isActive = true
            }
        }
        if fieldElement == nil {
            let fieldElement = IBStyledTextField(identifier: "TextField.Bubbled")
            self.fieldElement = fieldElement
            fieldElement.placeholder = hint
            fieldElement.text = value
            addArrangedSubview(fieldElement)
        }
    }
}
