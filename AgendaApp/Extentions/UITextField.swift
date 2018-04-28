//
//  UITextField.swift
//  AgendaApp
//
//  Created by admin on 28/04/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

extension UITextField{
    
    /// - Parameter color: placeholder text color.
    public func setPlaceHolderTextColor(_ color: UIColor) {
        guard let holder = placeholder, !holder.isEmpty else { return }
        self.attributedPlaceholder = NSAttributedString(string: holder, attributes: [.foregroundColor: color])
    }
    
    
    public func isBlank() -> Bool {
        if self.text != "" {
            return false
        }
        return true
    }
}
