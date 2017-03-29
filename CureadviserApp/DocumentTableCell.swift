//
//  DocumentTableCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 24/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DocumentTableCell: UITableViewCell {

    @IBOutlet var lblDate: UILabel!
    @IBOutlet var lblTime: UILabel!
    @IBOutlet var lblReportName: UILabel!
    @IBOutlet var img: UIImageView!
    @IBOutlet var btnShare: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        img.layer.cornerRadius = 5
        btnShare.layer.cornerRadius = 4
        btnShare.layer.borderColor = curveColor.cgColor
        btnShare.layer.borderWidth = 1
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
