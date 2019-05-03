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
    
    var line = UIBezierPath()
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(visibelInfo(_:) ))
        labelVisible.addGestureRecognizer(gesture)
        labelVisible.isUserInteractionEnabled = true
    }
    
    @objc func visibelInfo(_ gesture: UITapGestureRecognizer){

        if informationView.isHidden {
            informationView.isHidden = false
            systemView.isHidden = false
        }
        else {
            informationView.isHidden = true
            systemView.isHidden = true
        }
    }
}
