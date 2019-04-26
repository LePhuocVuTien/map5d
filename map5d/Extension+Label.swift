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
            var posY = self.frame.origin.y
            self.numberOfLines = newValue
            if self.intrinsicContentSize.width > self.frame.width && newValue >= 2{
                posY = posY - 4
                let size = self.sizeThatFits(CGSize(width: self.frame.width, height: self.frame.height))
                self.frame = CGRect(origin: CGPoint(x: self.frame.origin.x, y: posY), size: size)
            }
          
        }
    }
}
