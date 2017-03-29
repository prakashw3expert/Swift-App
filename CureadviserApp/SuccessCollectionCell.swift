//
//  SuccessCollectionCell.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 24/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class SuccessCollectionCell: UICollectionViewCell {

    @IBOutlet var lblPostDate: UILabel!
    @IBOutlet var img: UIImageView!
    @IBOutlet var Cellview: UIView!
    @IBOutlet var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        Cellview.layer.shadowColor = UIColor.black.cgColor
        Cellview.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        Cellview.layer.shadowOpacity = 0.3
        Cellview.layer.shadowRadius = 2.0
        
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -10, y: 130))
        path.addLine(to: CGPoint(x: img.frame.size.width+20, y: 150))
        
        //design path in layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.lineWidth = 60
        img.layer.addSublayer(shapeLayer)
    }

}
