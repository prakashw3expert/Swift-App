//
//  HospitalSearchCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class HospitalSearchCell: UITableViewCell {
    @IBOutlet var img: UIImageView!
    @IBOutlet var lblRating: UILabel!
    @IBOutlet var lblHospitalName: UILabel!
    @IBOutlet var lblAddress: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        img.layer.cornerRadius = 3
        img.clipsToBounds = true
        
        lblRating.layer.cornerRadius = 2
        lblRating.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
