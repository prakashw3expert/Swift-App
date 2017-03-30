//
//  SettingsVC.swift
//  CureadviserApp
//
//  Created by Bekground on 30/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet var cameraBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        cameraBtn.layer.cornerRadius = 25
        cameraBtn.layer.shadowColor = UIColor.darkGray.cgColor
        cameraBtn.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cameraBtn.layer.shadowOpacity = 0.5
        cameraBtn.layer.shadowRadius = 2.0
        
    }

    @IBAction func MenuAction(_ sender: Any) {
        self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
    }
    
    @IBAction func SubmitSettingAction(_ sender: Any) {
        
        self.navigationController?.pushViewController(Dashboard(nibName: "Dashboard", bundle: nil), animated: true)
        
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
