//
//  ShareScreenVC.swift
//  CureadviserApp
//
//  Created by Bekground on 29/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class ShareScreenVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var lblReportName: UILabel!
    @IBOutlet var img: UIImageView!
    @IBOutlet var lblTime: UILabel!
    @IBOutlet var lblDate: UILabel!
    @IBOutlet var msgSendBtn: UIButton!
    @IBOutlet var shareTable: UITableView!
    @IBOutlet var msgTxt: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        img.layer.cornerRadius  = 25
        msgSendBtn.layer.cornerRadius = 20
        
        
        shareTable.register(UINib(nibName: "shareTableCell", bundle: nil), forCellReuseIdentifier: "shareCell")
        shareTable.delegate = self
        shareTable.dataSource = self
        
    }

    
    //tableView DataSource and Delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell:shareTableCell = tableView.dequeueReusableCell(withIdentifier: "shareCell", for: indexPath) as! shareTableCell
        return Cell
        
    }
    
    
    
    
    @IBAction func CloseAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    @IBAction func MessageSendAction(_ sender: Any) {
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
