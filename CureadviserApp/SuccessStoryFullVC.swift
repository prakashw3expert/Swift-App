//
//  SuccessStoryFullVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 24/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class SuccessStoryFullVC: UIViewController {

    @IBOutlet var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -10, y: 240))
        path.addLine(to: CGPoint(x: screenWidth+20, y: 272))
        
        //design path in layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.lineWidth = 60
        
        img.layer.addSublayer(shapeLayer)
        
    }

    @IBAction func MenuAction(_ sender: Any) {
        
        self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
