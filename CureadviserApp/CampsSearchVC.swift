//
//  CampsSearchVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class CampsSearchVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet var capmsTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        capmsTable.register(UINib(nibName: "CampsTableCell", bundle: nil), forCellReuseIdentifier: "CampsCell")
        capmsTable.delegate = self
        capmsTable.dataSource = self
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell:CampsTableCell = tableView.dequeueReusableCell(withIdentifier: "CampsCell", for: indexPath) as! CampsTableCell
        
        return Cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.navigationController?.pushViewController(CampsDetailVC(nibName: "CampsDetailVC", bundle: nil), animated: true)
        
        
        
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
