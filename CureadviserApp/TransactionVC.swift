//
//  TransactionVC.swift
//  CureadviserApp
//
//  Created by Bekground on 30/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class TransactionVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        table.register(UINib(nibName: "TransationTableCell", bundle: nil), forCellReuseIdentifier: "transactionCell")
        table.delegate = self
        table.dataSource = self
        
    }
    
    
    //TableView Data Source and delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell:TransationTableCell = tableView.dequeueReusableCell(withIdentifier: "transactionCell", for: indexPath) as! TransationTableCell
        
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
