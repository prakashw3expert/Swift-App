//
//  NotificationVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 24/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet var notificationTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        notificationTable.dataSource = self
        notificationTable.delegate = self
        notificationTable.register(UINib(nibName: "NotificationTableCell", bundle: nil), forCellReuseIdentifier: "notificationCell")
        
        
    }

    //// TableView DataSource and Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell:NotificationTableCell = tableView.dequeueReusableCell(withIdentifier: "notificationCell", for: indexPath) as! NotificationTableCell
        
        switch indexPath.row {
        case 0:
            Cell.NewDrView.isHidden = false
            Cell.appointmentView.isHidden = true
        default:
            Cell.NewDrView.isHidden = true
            Cell.appointmentView.isHidden = false
        }
        
        return Cell
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
