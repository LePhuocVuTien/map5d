//
//  Extension+Button.swift
//  map5d
//
//  Created by iMacbook on 4/25/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

extension UIButton{
    
    @IBInspectable var cornerRadiusd: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor
                else {
                    return nil
            }
            return UIColor(cgColor: color)
        }
        set {
            self.layer.borderWidth = 1
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        get {
            guard let color = layer.shadowColor
                else {
                    return nil
            }
            return UIColor(cgColor: color)
        }
        set {
            self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            self.layer.shadowOpacity = 0.3
            self.layer.shadowRadius = 1.0
            layer.shadowColor = newValue?.cgColor
        }
    }

}
