//
//  ViewController.swift
//  map5d
//
//  Created by iMacbook on 4/25/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleNav: UINavigationBar!
    @IBOutlet weak var informationView: InformationView!
    @IBOutlet weak var labelVisible: UILabel!
    @IBOutlet weak var safeArea: UIView!
    @IBOutlet weak var systemView: UIView!
    @IBOutlet weak var height: NSLayoutConstraint!
    
    var line = UIBezierPath()
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(visibelInfo(_:) ))
        labelVisible.addGestureRecognizer(gesture)
        labelVisible.isUserInteractionEnabled = true
    }
    
    @objc func visibelInfo(_ gesture: UITapGestureRecognizer){

        UIView.animate(withDuration: 0.5,
                       animations: {
                        if self.height.constant == 0 {
                            self.height.constant = 230
                            self.safeArea.backgroundColor = UIColor(displayP3Red: 0.245141, green: 0.528709, blue: 0.996657, alpha: 1.0)
                        }
                        else {
                            self.height.constant = 0
                            self.safeArea.backgroundColor = .white
                        }
                        self.view.layoutIfNeeded()
        },
                       completion: nil)

    }
}
