//
//  DasBoardTableCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 20/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DasBoardTableCell: UITableViewCell {

    @IBOutlet var lblDetail: UILabel!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var img: UIImageView!
    @IBOutlet var cellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cellView.layer.cornerRadius = 5
        
        cellView.layer.shadowColor = UIColor.darkGray.cgColor
        cellView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cellView.layer.shadowOpacity = 0.5
        cellView.layer.shadowRadius = 2.0
        
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
