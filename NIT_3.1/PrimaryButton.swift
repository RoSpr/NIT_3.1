//
//  PrimaryButton.swift
//  NIT_3.1
//
//  Created by Родион Сприкут on 25.11.2020.
//

import UIKit

@IBDesignable
class PrimaryButton: UIButton {
    
    @IBInspectable var borderColor: UIColor {
        get { return UIColor(cgColor: layer.borderColor ?? UIColor.green.cgColor) }
        set { layer.borderColor = newValue.cgColor  }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var buttonRadius: CGFloat {
        get { return layer.cornerRadius }
        set { layer.cornerRadius = newValue }
       }
}
