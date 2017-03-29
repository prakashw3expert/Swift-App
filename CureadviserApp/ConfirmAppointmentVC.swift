//
//  ConfirmAppointmentVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 23/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class ConfirmAppointmentVC: UIViewController {

    @IBOutlet var scrView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrView.contentSize = CGSize(width: screenWidth, height: 603)
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func ConfirmAppointmentAction(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(MyAppointmentsVC(nibName: "MyAppointmentsVC", bundle: nil), animated: true)
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
