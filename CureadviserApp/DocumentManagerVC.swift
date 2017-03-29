//
//  DocumentManagerVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 24/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class DocumentManagerVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var documentTable: UITableView!

   
    
    
    
    
    @IBOutlet var messageSendBtn: UIButton!
    @IBOutlet var txtMsg: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        documentTable.delegate = self
        documentTable.dataSource = self
        documentTable.register(UINib(nibName: "DocumentTableCell", bundle: nil), forCellReuseIdentifier: "documentCell")
        
        
        
        
        
        
        
        
        
        
    }
    
    
    // UITable View Data Source and Delegate funcation
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
       return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return 4
       
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "June 2015"
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell:DocumentTableCell = tableView.dequeueReusableCell(withIdentifier: "documentCell", for: indexPath) as! DocumentTableCell
        Cell.btnShare.tag = indexPath.row
        Cell.btnShare.addTarget(self, action: #selector(ShareBtnAction(_:)), for: .touchUpInside)
        
        return Cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
    func ShareBtnAction(_ sender : UIButton) {
        let page = ShareScreenVC(nibName: "ShareScreenVC", bundle: nil)
        page.modalPresentationStyle = .overCurrentContext
        self.present(page, animated: true, completion: nil)
       
        
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
