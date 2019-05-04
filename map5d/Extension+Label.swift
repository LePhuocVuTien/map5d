//
//  Extension+Label.swift
//  map5d
//
//  Created by iMacbook on 4/26/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

extension UILabel {

    @IBInspectable var numberOfLine: Int{
        get {
            return Int(self.numberOfLines)
        }
        set {
            self.numberOfLines = newValue
            if self.intrinsicContentSize.width > self.frame.width && newValue >= 2{
                self.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
                print("------ \(self.topAnchor)")
                
                self.setNeedsUpdateConstraints()
            }
        }
    }
}
