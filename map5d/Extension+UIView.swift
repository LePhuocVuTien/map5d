//
//  Extension+ShadowNavigationBar.swift
//  map5d
//
//  Created by iMacbook on 4/25/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable var shadow: UIColor? {
        get {
            guard let color = layer.shadowColor
            else {
                return nil
            }
            return UIColor(cgColor: color)
        }
        set{
            
            layer.masksToBounds = false
            self.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
            self.layer.shadowOpacity = 1.0
            self.layer.shadowRadius = 0.5
            self.layer.shadowColor = newValue?.cgColor
        }
    }
    
}

