//
//  TransationTableCell.swift
//  CureadviserApp
//
//  Created by Bekground on 30/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class TransationTableCell: UITableViewCell {

    @IBOutlet var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
