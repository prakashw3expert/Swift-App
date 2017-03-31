//
//  DoctorSearchVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 20/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DoctorSearchVC: UIViewController, UITableViewDataSource,UITableViewDelegate{

    @IBOutlet var sortView: UIView!
    @IBOutlet var SortingScreenView: UIView!
    @IBOutlet var SuccessBtn: UIButton!
    @IBOutlet var filterScrView: UIScrollView!
    @IBOutlet var Drt: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
        
  
    
        SuccessBtn.layer.cornerRadius = 25
        SuccessBtn.layer.shadowColor = UIColor.darkGray.cgColor
        SuccessBtn.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        SuccessBtn.layer.shadowOpacity = 0.8
        SuccessBtn.layer.shadowRadius = 2.0
        
        
        sortView.layer.cornerRadius = 4
        sortView.layer.shadowColor = UIColor.darkGray.cgColor
        sortView.layer.shadowOffset = CGSize(width: 1, height: 2.0)
        sortView.layer.shadowOpacity = 0.8
        sortView.layer.shadowRadius = 2.0
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(DissmissSortViewAction))
        tapGesture.numberOfTapsRequired = 1
        SortingScreenView.addGestureRecognizer(tapGesture)
        
        Drt.register(UINib(nibName: "DoctorTblCell", bundle: nil), forCellReuseIdentifier: "DrCell")
        Drt.delegate = self
        Drt.dataSource = self
        
        filterScrView.frame = self.view.frame
        filterScrView.contentSize = CGSize(width: screenWidth, height: 790)
        
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(DismissKeyBoard))
        self.filterScrView.addGestureRecognizer(tapGes)
    }
    func DismissKeyBoard()
    {
        view.endEditing(true)
    }
    
    func DissmissSortViewAction() {
        
        SortingScreenView.removeFromSuperview()
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: DoctorTblCell = tableView.dequeueReusableCell(withIdentifier: "DrCell", for: indexPath) as! DoctorTblCell
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
         self.navigationController?.pushViewController(DoctorDetailVC(nibName: "DoctorDetailVC", bundle: nil), animated: true)
        
        
    }
    
    
    @IBAction func FilterAction(_ sender: Any) {
        
        filterScrView.frame = self.view.frame
        self.view.addSubview(filterScrView)
        
    }
    
    @IBAction func FilterDismissAction(_ sender: Any) {
        
        filterScrView.removeFromSuperview()
    }
    
    
    @IBAction func FilterSuccesAction(_ sender: Any) {
        filterScrView.removeFromSuperview()
    }
    
    
    
    @IBAction func SortAction(_ sender: Any) {
        SortingScreenView.frame = self.view.frame
        self.view.addSubview(SortingScreenView)
        
    }
    
    
    @IBAction func MenuAction(_ sender: Any) {
        
         self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
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
