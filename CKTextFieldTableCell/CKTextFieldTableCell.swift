//
//  CKTextFieldTableCell.swift
//  CKTextFieldTableCell
//
//  Copyright © 2015 cybertk. All rights reserved.
//

import UIKit


public class CKTextFieldTableCell : UITableViewCell {
    
    // MARK: Internal Properties
    
    // MARK: APIs
    
    @IBOutlet var textField: UITextField!
    
    @IBInspectable public var enableFixedTitleWidth: Bool = false
    @IBInspectable public var titleWidth: Int = 100
    
    // MARK: Initilizers
    
    // MARK: Overrides
    
    public override func awakeFromNib() {
        super.awakeFromNib();
        
        guard let textField = textField else {
            print("Warnning: You must set textField in IB")
            return
        }
        
        // Customize TableCell
        selectionStyle = .None
        textField.translatesAutoresizingMaskIntoConstraints = false
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        setupConstraints()
    }
    
    public override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        
        if (textField!.isFirstResponder() && event?.touchesForView(textField) == nil) {
            // textField lost focus
            textField!.endEditing(true)
        }
    }
    
    // MRAK: Priviate
    
    private func constraintsWithVisualFormat(format: String, _ options: NSLayoutFormatOptions) -> [NSLayoutConstraint] {
        let views = [
            "textLabel": textLabel!,
            "textField": textField!,
            "superview": contentView
        ]
        
        return NSLayoutConstraint.constraintsWithVisualFormat(format, options: options, metrics: nil, views: views)
    }
    
    private func setupConstraints() {
        var constraints: [NSLayoutConstraint] = []

        // VFL Syntax, see https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage/VisualFormatLanguage.html#//apple_ref/doc/uid/TP40010853-CH3-SW1
        
        // Horizontal constraints
        if enableFixedTitleWidth {
            textLabel!.setContentCompressionResistancePriority(UILayoutPriorityRequired, forAxis: .Horizontal)
            constraints += constraintsWithVisualFormat("H:|-15-[textLabel(\(titleWidth))]-20-[textField]-|", .AlignAllCenterY)
        } else {
            constraints += constraintsWithVisualFormat("H:|-15-[textLabel]-20-[textField]-|", .AlignAllCenterY)
            
            // Remove empty space of textLabel
            textLabel!.setContentHuggingPriority(UILayoutPriorityRequired, forAxis: .Horizontal)
        }
        
        // Vertical constraints
        constraints += constraintsWithVisualFormat("H:[superview]-(<=1)-[textLabel]", .AlignAllCenterY)
        
        contentView.addConstraints(constraints)
    }
}


