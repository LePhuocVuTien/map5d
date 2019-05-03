//
//  RatingController.swift
//  map5d
//
//  Created by iMacbook on 5/2/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

class RatingController: UIStackView {

    var starsRating = 0
    var starsEmptyPicName = "estrellaempty"
    var starsFilledPicName = "estrella"
    
    override func draw(_ rect: CGRect) {
        var startTag = 0
        let buttons = self.subviews.filter{$0 is UIButton}
        for button in buttons
        {
            if let button = button as? UIButton{
                button.addTarget(self, action: #selector(pressed(sender:)), for: .touchUpInside)
                startTag += 1
                button.tag = startTag
            }
        }
    }

    func setStarsRating(rating:Int){
        let buttons = self.subviews.filter{$0 is UIButton}
        for button in buttons {
            if let button = button as? UIButton{
                if button.tag <= rating {
                    button.setImage(UIImage(named: starsFilledPicName), for: .normal)
                }else{
                    button.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                }
            }
        }
    }
    
    @objc func pressed(sender: UIButton) {
        setStarsRating(rating: sender.tag)
    }
}
