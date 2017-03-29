//
//  DasboardNewsVC.swift
//  CureadviserApp
//
//  Created by Bekground on 28/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DasboardNewsVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: "DasBoardTableCell", bundle: nil), forCellReuseIdentifier: "TblCell")
    }
    
    //TableView Delegate and DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: DasBoardTableCell = tableView.dequeueReusableCell(withIdentifier: "TblCell", for: indexPath) as! DasBoardTableCell
        return cell
        
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
