//
//  Extension+ShadowNavigationBar.swift
//  map5d
//
//  Created by iMacbook on 4/25/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {
    @IBInspectable var shadowColor: UIColor? {
        get {
            guard let color = layer.shadowColor
            else {
                return nil
            }
            return UIColor(cgColor: color)
        }
        set{
            self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            self.layer.shadowOpacity = 0.2
            self.layer.shadowRadius = 0.5
            layer.shadowColor = newValue?.cgColor
        }
    }
    
}

