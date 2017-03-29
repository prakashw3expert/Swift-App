//
//  DoctorDetailVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 21/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit



class DoctorDetailVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet var curveView: UIView!
    @IBOutlet var schduleBtn: UIButton!
    @IBOutlet var imgDr: UIImageView!
    @IBOutlet var DrDetailTbl: UITableView!
    @IBOutlet var ScrlTaskView: UIScrollView!
    //***Task Btn Outlets
    @IBOutlet var BtnBasicInfo: UIButton!
    @IBOutlet var btnEduction: UIButton!
    @IBOutlet var btnWorkExp: UIButton!
    @IBOutlet var btnSchedule: UIButton!
    @IBOutlet var btnOtherInfo: UIButton!
    
    @IBOutlet var TaskBtnCollection: [UIButton]!
    
    @IBOutlet var shadowView: UIView!
    
    @IBOutlet var TopView: UIView!
    
    var taskTag = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -10, y: 20))
        path.addLine(to: CGPoint(x: screenWidth+20, y: 50))
        
        //design path in layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = curveColor.cgColor
        shapeLayer.lineWidth = 65
        
        curveView.layer.addSublayer(shapeLayer)
        
        
        
        schduleBtn.layer.cornerRadius = 25
        //schduleBtn.clipsToBounds = true
        schduleBtn.layer.shadowColor = UIColor.darkGray.cgColor
        schduleBtn.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        schduleBtn.layer.shadowOpacity = 0.5
        schduleBtn.layer.shadowRadius = 2.0
        
        
        
        
        ScrlTaskView.frame = CGRect(x: 0, y: 150, width: screenWidth, height: 40)
        TopView.addSubview(ScrlTaskView)
        
        DrDetailTbl.delegate = self
        DrDetailTbl.dataSource = self
        DrDetailTbl.register(UINib(nibName: "DrDetailTblCell", bundle: nil), forCellReuseIdentifier: "DrDetailCell")
        
        imgDr.layer.cornerRadius = 5
        imgDr.clipsToBounds = true
        
        
        for var btn in TaskBtnCollection {
            btn.addTarget(self, action: #selector(TaskBtnActions(sender:)), for:.touchUpInside)
            btn.setTitleColor(NormalBtnColor, for: .normal)
            btn.setTitleColor(SelectedBtnColor, for: .selected)
            if  btn.tag == 1
            {
               btn.isSelected = true
            }
        }
        
        
    }

    func TaskBtnActions(sender:UIButton){
    
        taskTag = sender.tag
        
        for var btn in TaskBtnCollection
           {
              btn.isSelected = false
           }
        
        sender.isSelected = true
        shadowView.frame = CGRect(x: sender.frame.origin.x, y: 39, width: sender.frame.size.width, height: 1)
        sender.setTitleColor(SelectedBtnColor, for: .selected)
        
        
        DrDetailTbl.reloadData()
        
//        if(sender.tag == 1)
//        {
//         shadowView.frame = CGRect(x: sender.frame.origin.x, y: 39, width: sender.frame.size.width, height: 1)
//          sender.setTitleColor(SelectedBtnColor, for: .selected)
//            
//        }
//        else if(sender.tag == 2)
//        {
//            shadowView.frame = CGRect(x: sender.frame.origin.x, y: 39, width: sender.frame.size.width, height: 1)
//            sender.setTitleColor(SelectedBtnColor, for: .selected)
//            
//        }
//        else if(sender.tag == 3)
//        {
//            shadowView.frame = CGRect(x: sender.frame.origin.x, y: 39, width: sender.frame.size.width, height: 1)
//            sender.setTitleColor(SelectedBtnColor, for: .selected)
//            
//        }
//        else if(sender.tag == 4)
//        {
//            shadowView.frame = CGRect(x: sender.frame.origin.x, y: 39, width: sender.frame.size.width, height: 1)
//            sender.setTitleColor(SelectedBtnColor, for: .selected)
//            
//        }
//        else if(sender.tag == 5)
//        {
//            shadowView.frame = CGRect(x: sender.frame.origin.x, y: 39, width: sender.frame.size.width, height: 1)
//            sender.setTitleColor(SelectedBtnColor, for: .selected)
//            
//        }
        
    
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        if(taskTag == 1 || taskTag == 5){
        return 40
        }
        else{
            
          return 80
        }
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(taskTag == 1){
            return 6
        }
        else if(taskTag == 2){
            return 2
        }
        else if(taskTag == 3){
            return 2
        }
        else if(taskTag == 4){
            return 2
        }
        else {
            return 3
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: DrDetailTblCell = tableView.dequeueReusableCell(withIdentifier: "DrDetailCell", for: indexPath) as! DrDetailTblCell
        self.DrDetailTbl.backgroundColor = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        if(taskTag == 1)
        {
          cell.cellView1.isHidden = false
          cell.cellView2.isHidden = true
          self.DrDetailTbl.backgroundColor = UIColor.white
            switch indexPath.row {
            case 0:
                cell.btnimg.setImage(UIImage.init(named: "place_marker.png"), for: .normal)
                cell.TxtLbl.text = "Jaipur, Rajasthan"
            case 1:
                cell.btnimg.setImage(UIImage.init(named: "cell.png"), for: .normal)
                cell.TxtLbl.text = "9785 555 444"
            case 2:
                cell.btnimg.setImage(UIImage.init(named: "cell.png"), for: .normal)
                cell.TxtLbl.text = "shulekhabhandri@gmail.com"
            case 3:
                cell.btnimg.setImage(UIImage.init(named: "time.png"), for: .normal)
                cell.TxtLbl.text = "15 min"
            case 4:
                cell.btnimg.setImage(UIImage.init(named: "time.png"), for: .normal)
                cell.TxtLbl.text = "200"
            default:
                break
            }
            
            
            
            
        }
        else if(taskTag == 2)
        {
            cell.cellView1.isHidden = true
            cell.cellView2.isHidden = false
            cell.img.image = UIImage.init(named: "graduate.png")
            switch indexPath.row {
            case 0:
                cell.lblDegree.text = "Phd."
                cell.lblClgName.text = "Swai Man Singh College"
                cell.lblDuration.text = "09/2007 - 08/2011"
            case 1:
                cell.TxtLbl.text = "MBBS"
                cell.lblClgName.text = "Maharani Vidhya Ashram"
                cell.lblDuration.text = "09/2007 - 08/2011"
            default:
                break
            }
        
        }
        else if(taskTag == 3)
        {
            cell.cellView1.isHidden = true
            cell.cellView2.isHidden = false
            cell.img.image = UIImage.init(named: "businessman.png")
            switch indexPath.row {
            case 0:
                cell.lblDegree.text = "Senior Cardiologist"
                cell.lblClgName.text = "Swai Man Singh Hospital"
                cell.lblDuration.text = "09/2007 - Current"
            case 1:
                cell.TxtLbl.text = "Support Cardiologiest"
                cell.lblClgName.text = "Fortis Hospital"
                cell.lblDuration.text = "09/2007 - 08/2011"
            default:
                break
            }
            
        }
        else if(taskTag == 4)
        {
            cell.cellView1.isHidden = true
            cell.cellView2.isHidden = false
            
            cell.img.image = UIImage.init(named: "schedule.png")
            switch indexPath.row {
            case 0:
                cell.lblDegree.text = "04.00PM - 07.00PM"
                cell.lblClgName.text = "10 Min"
            case 1:
                cell.TxtLbl.text = "09.30AM - 01.00PM"
                cell.lblClgName.text = "10 Min"
            default:
                break
            }
            
            
            let attrs1 = [NSForegroundColorAttributeName:  SelectedBtnColor]//[NSFontAttributeName : UIFont.boldSystemFont(ofSize: 18), NSForegroundColorAttributeName : UIColor.green]
            
            let attrs2 = [NSForegroundColorAttributeName:  NormalBtnColor]//[NSFontAttributeName : UIFont.boldSystemFont(ofSize: 18), NSForegroundColorAttributeName : UIColor.white]
            
            let attributedString1 = NSMutableAttributedString(string:"Sun", attributes:attrs1)
            
            let attributedString2 = NSMutableAttributedString(string:" Mon", attributes:attrs2)
            
            let attributedString3 = NSMutableAttributedString(string:" Tue", attributes:attrs1)
            
            let attributedString4 = NSMutableAttributedString(string:" Wed", attributes:attrs2)
            let attributedString5 = NSMutableAttributedString(string:" Thu", attributes:attrs2)
            
            let attributedString6 = NSMutableAttributedString(string:" Fri", attributes:attrs1)
            let attributedString7 = NSMutableAttributedString(string:" Sat", attributes:attrs1)
            
            attributedString1.append(attributedString2)
            attributedString1.append(attributedString3)
            attributedString1.append(attributedString4)
            attributedString1.append(attributedString5)
            attributedString1.append(attributedString6)
            attributedString1.append(attributedString7)
            cell.lblDuration.attributedText = attributedString1
        }
      else if(taskTag == 5)
        {
            cell.cellView1.isHidden = false
            cell.cellView2.isHidden = true
            self.DrDetailTbl.backgroundColor = UIColor.white
            switch indexPath.row {
            case 0:
                cell.TxtLbl.text = "Mahindra Club Membership Since 2015"
                cell.btnimg.setImage(UIImage.init(named: "trophy.png"), for: .normal)
            case 1:
                cell.TxtLbl.text = "English"
                cell.btnimg.setImage(UIImage.init(named: "language.png"), for: .normal)
            case 2:
                cell.TxtLbl.text = "Membership"
                cell.btnimg.setImage(UIImage.init(named: "membership.png"), for: .normal)
            default:
                break
            }
            
            
            
        }
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
//        self.navigationController?.pushViewController(DoctorDetailVC(nibName: "DoctorDetailVC", bundle: nil), animated: true)
        
        
    }
    
    
    
    
    
    
    
    
    
    @IBAction func ScheduleBtnAction(_ sender: Any) {
    }
    
    
    
    
    @IBAction func MenuAction(_ sender: Any) {
        self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}
