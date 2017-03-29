//
//  MyAppointmentsVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class MyAppointmentsVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var receiptActionBtn: UIButton!
    @IBOutlet var appointMentTable: UITableView!
    
    @IBOutlet var curveView: UIView!
    @IBOutlet var appointmentDetailView: UIView!
    
    @IBOutlet var receiptActionView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        receiptActionBtn.layer.cornerRadius = 25
        receiptActionBtn.layer.shadowColor = UIColor.darkGray.cgColor
        receiptActionBtn.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        receiptActionBtn.layer.shadowOpacity = 0.8
        receiptActionBtn.layer.shadowRadius = 2.0
        
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -2, y: 90))
        path.addLine(to: CGPoint(x: screenWidth-54, y: 120))
        
        //design path in layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.lineWidth = 45
        
        curveView.layer.addSublayer(shapeLayer)
        
        appointMentTable.register(UINib(nibName: "AppointmentsCell", bundle: nil), forCellReuseIdentifier: "Cell")
        appointMentTable.delegate = self
        appointMentTable.dataSource = self
        
        
        
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  5
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell:AppointmentsCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AppointmentsCell
        
        
        
        Cell.btnSelectRow.tag = indexPath.row
        Cell.btnSelectRow.addTarget(self, action: #selector(RowSelectBtnAction(_:)), for: .touchUpInside)
        
        switch indexPath.row {
        case 0:
            Cell.lblStatus.attributedText = NSAttributedString(string: "COMPLETED", attributes:[NSForegroundColorAttributeName:  UIColor.green])
        case 1:
            Cell.lblStatus.attributedText = NSAttributedString(string: "PENDING", attributes:[NSForegroundColorAttributeName:  UIColor.red])
        case 2:
            Cell.lblStatus.attributedText = NSAttributedString(string: "CANCELED", attributes:[NSForegroundColorAttributeName:  UIColor.red])
        case 3:
            Cell.lblStatus.attributedText = NSAttributedString(string: "COMPLETED", attributes:[NSForegroundColorAttributeName:  UIColor.green])
        default:
            Cell.lblStatus.attributedText = NSAttributedString(string: "COMPLETED", attributes:[NSForegroundColorAttributeName:  UIColor.green])
        }
        
        
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.appointmentDetailView.frame = self.view.frame
        self.view.addSubview(self.appointmentDetailView)
        
    }
    
    
    func RowSelectBtnAction(_ sender : UIButton){
        
        let color = UIColor.init(red: 221.0/255.0, green: 221.0/255.0, blue: 221.0/255.0, alpha: 1.0)
        
        
        if(sender.tintColor == SelectedBtnColor)
        {
            //sender.isSelected = false
            sender.tintColor = color
            
        }
        else
        {
           // sender.isSelected = true
           
           sender.tintColor = SelectedBtnColor
            
        }
        
    }
    
    @IBAction func MenuAction(_ sender: Any) {
        
        self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
    }
    
    
    
    @IBAction func AppointmentReceiptAction(_ sender: Any) {
        
        self.receiptActionView.isHidden = false
        
    }
    
    @IBAction func GenerateReceiptAction(_ sender: Any) {
        
        
    }
    
    @IBAction func ReceiptCancelAction(_ sender: Any) {
        receiptActionView.isHidden = true
        self.appointmentDetailView.removeFromSuperview()
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
