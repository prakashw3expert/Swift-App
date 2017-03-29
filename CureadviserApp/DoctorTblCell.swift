//
//  DoctorTblCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 20/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DoctorTblCell: UITableViewCell {

    @IBOutlet var img: UIImageView!
    @IBOutlet var lblRating: UILabel!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblDegree: UILabel!
    @IBOutlet var lblDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        
        lblRating.layer.cornerRadius = 2
        lblRating.clipsToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
