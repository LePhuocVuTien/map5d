//
//  ButtonViewController.swift
//  map5d
//
//  Created by iMacbook on 5/2/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

class ButtonViewController: UIView {

    var path: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func draw(_ rect: CGRect) {
        
        print ("draw")
        // Initialize the path.
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: self.frame.size.width/2 + 40, y: 0.0))
        path.addLine(to: CGPoint(x: self.frame.size.width/2 - 40, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
        path.close()
        
        // Specify the fill color and apply it to the path.
        
        UIColor(displayP3Red: 0.20, green: 0.40, blue: 0.8, alpha: 1.0).setFill()
        path.fill()
        
        UIColor.purple.setStroke()
    }

}
