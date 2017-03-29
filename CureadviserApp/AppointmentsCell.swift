//
//  AppointmentsCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class AppointmentsCell: UITableViewCell {
    @IBOutlet var btnSelectRow: UIButton!
    @IBOutlet var lblDrName: UILabel!
    @IBOutlet var lblDate: UILabel!
    @IBOutlet var lblTime: UILabel!
    @IBOutlet var lblStatus: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
