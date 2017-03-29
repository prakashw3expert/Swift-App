//
//  AddStoryDetail.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 27/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class AddStoryDetail: UIViewController {

    @IBOutlet var scrView: UIScrollView!
    @IBOutlet var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        mainView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight-64)
        scrView.addSubview(mainView)
        
    }

    @IBAction func MenuAction(_ sender: Any) {
        
        self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
        //self.sideMenuViewController!.presentLeftMenuViewController()
        
    }
    @IBAction func SuccessAction(_ sender: Any) {
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
