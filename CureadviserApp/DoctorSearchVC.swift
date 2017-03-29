//
//  DoctorSearchVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 20/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DoctorSearchVC: UIViewController, UITableViewDataSource,UITableViewDelegate{

    @IBOutlet var filterScrView: UIScrollView!
    @IBOutlet var Drt: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Drt.register(UINib(nibName: "DoctorTblCell", bundle: nil), forCellReuseIdentifier: "DrCell")
        Drt.delegate = self
        Drt.dataSource = self
        
        
        filterScrView.contentSize = CGSize(width: screenWidth, height: 850)
        
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
    @IBAction func SortAction(_ sender: Any) {
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
