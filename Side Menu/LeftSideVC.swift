//
//  LeftSideVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class LeftSideVC: UIViewController {

    @IBOutlet var scrView: UIScrollView!
    @IBOutlet var menuView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        menuView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 740)
        scrView.addSubview(menuView)
        scrView.contentSize = CGSize(width: 250, height: 850)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BasboardBtnAction(_ sender: UIButton) {
        
        let nav = UINavigationController.init(rootViewController: Dashboard(nibName: "Dashboard", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
    }
    
    @IBAction func SearchDoctorBrnAction(_ sender: UIButton) {
        
        let nav = UINavigationController.init(rootViewController: DoctorSearchVC(nibName: "DoctorSearchVC", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})

    }
    
    @IBAction func SearchHospitalBtnAction(_ sender: UIButton) {
        let nav = UINavigationController.init(rootViewController: HospitalSearchVC(nibName: "HospitalSearchVC", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
    }
    
    @IBAction func SearchCampusAndEventAction(_ sender: UIButton) {
        let nav = UINavigationController.init(rootViewController: CampsSearchVC(nibName: "CampsSearchVC", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
        
        
       
    }
    @IBAction func MyAppointmentAction(_ sender: UIButton) {
        
        let nav = UINavigationController.init(rootViewController: MyAppointmentsVC(nibName: "MyAppointmentsVC", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
        
    }
    
    @IBAction func NotificationAction(_ sender: UIButton) {
        let nav = UINavigationController.init(rootViewController: NotificationVC(nibName: "NotificationVC", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
    }
    
    @IBAction func DocumentManagerAction(_ sender: UIButton) {
        let nav = UINavigationController.init(rootViewController: DocumentManagerVC(nibName: "DocumentManagerVC", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
    }
    
    @IBAction func SuccessBtnAction(_ sender: UIButton) {
        
        let nav = UINavigationController.init(rootViewController: SuccessStoriesVC(nibName: "SuccessStoriesVC", bundle: nil))
        nav.navigationBar.isHidden = true
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
    }
    
    @IBAction func TransactionAction(_ sender: UIButton) {
    }
    
    @IBAction func CuretedAdviceAction(_ sender: UIButton) {
    }
    
    @IBAction func CompareAction(_ sender: UIButton) {
        
        let nav = UINavigationController.init(rootViewController: CompareHospitalVC(nibName: "CompareHospitalVC", bundle: nil))
        nav.navigationBar.isHidden = true
        
        self.menuContainerViewController.centerViewController = nav
        self.menuContainerViewController.setMenuState(MFSideMenuStateClosed, completion: {})
        
    }
    
    
    func SetNaviagteController(string : String){
        
           }


   

}
