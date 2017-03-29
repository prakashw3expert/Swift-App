//
//  CompareHospitalVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 28/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class CompareHospitalVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var lblNameHospital1: UILabel!
    @IBOutlet var lblNameHospital2: UILabel!
    @IBOutlet var imgHospital1: UIImageView!
    @IBOutlet var imgHospital2: UIImageView!
    @IBOutlet var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.register(UINib(nibName: "CompareHospitalCell", bundle: nil), forCellReuseIdentifier: "CompareHospitalCell")
        table.delegate = self
        table.dataSource = self
        
        
        imgHospital1.layer.cornerRadius = 5
        imgHospital1.clipsToBounds = true
        
        imgHospital2.layer.cornerRadius = 5
        imgHospital2.clipsToBounds = true
        
        
        
    }

    
    //Table View Delegate and Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell:CompareHospitalCell = tableView.dequeueReusableCell(withIdentifier: "CompareHospitalCell", for: indexPath) as! CompareHospitalCell
        if(indexPath.row % 2 == 0)
        {
         Cell.backgroundColor = UIColor.init(red: 244.0/255.0, green: 244.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        }
        else{
        Cell.backgroundColor  = UIColor.white
        }
        return Cell
    }
    
    @IBAction func MenuAction(_ sender: Any) {
        self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
    }
    
    
    @IBAction func RemoveActionHospital1(_ sender: Any) {
    }
    @IBAction func RemoveActionHospital2(_ sender: Any) {
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
