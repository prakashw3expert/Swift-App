//
//  DrDetailTblCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DrDetailTblCell: UITableViewCell {

    @IBOutlet var cellView1: UIView!
    @IBOutlet var cellView2: UIView!
    
    @IBOutlet var TxtLbl: UILabel!
    @IBOutlet var btnimg: UIButton!
    
    
    @IBOutlet var img: UIImageView!
    @IBOutlet var lblDegree: UILabel!
    @IBOutlet var lblClgName: UILabel!
    
    @IBOutlet var lblDuration: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cellView2.layer.shadowColor = UIColor.darkGray.cgColor
        cellView2.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cellView2.layer.shadowOpacity = 0.5
        cellView2.layer.shadowRadius = 2.0
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
