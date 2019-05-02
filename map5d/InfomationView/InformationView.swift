//
//  InformationView.swift
//  map5d
//
//  Created by iMacbook on 4/25/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit
import Cosmos

class InformationView: UIView {

    @IBOutlet weak var avataImageView: UIImageView!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var runTimeButton: UIButton!
    @IBOutlet weak var addressButton: UIButton!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var cosmosView: CosmosView!
    @IBOutlet weak var arriveLabel: UILabel!
    
    @IBOutlet weak var runTimeView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("InformationView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
    }
    
    @IBAction func onTapMessage(_ sender: Any) {
        print("YOU HAVE SEND A MESSAGE")
    }
    @IBAction func onTapPhone(_ sender: Any) {
        print("SR BREAK PHONE")
    }
    @IBAction func onTapCancel(_ sender: Any) {
        print("CANCEL")
    }
}
