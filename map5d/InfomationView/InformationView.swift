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
        //contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    @IBAction func onTapCancel(_ sender: Any) {
        print("Cancel")
    }
    
    @IBAction func onTapCall(_ sender: Any) {
        print("Call 113")
    }
    
    @IBAction func onTapMassage(_ sender: Any) {
        print("This is a message")
    }
}
