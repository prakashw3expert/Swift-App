//
//  CampsTableCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class CampsTableCell: UITableViewCell {

    @IBOutlet var lblTime: UILabel!
    @IBOutlet var lbldate: UILabel!
    @IBOutlet var lblRating: UILabel!
    @IBOutlet var lblCampName: UILabel!
    @IBOutlet var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        
        lblRating.layer.cornerRadius = 3
        lblRating.clipsToBounds  = true
        
        
    }
    
}
