//
//  CampsDetailVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 24/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class CampsDetailVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var img: UIImageView!
    @IBOutlet var campsTable: UITableView!
    @IBOutlet var TaskView: UIScrollView!
    
    @IBOutlet var TopView: UIView!
    @IBOutlet var shadowView: UIView!
    @IBOutlet var curveView: UIView!
    
    @IBOutlet var TaskBtnCollection: [UIButton]!
     var taskTag = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -10, y: 20))
        path.addLine(to: CGPoint(x: screenWidth+20, y: 50))
        
        //design path in layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = curveColor.cgColor
        shapeLayer.lineWidth = 65
        
        curveView.layer.addSublayer(shapeLayer)
        
        
        
        
        campsTable.register(UINib(nibName:"CampsDetailTableCell", bundle: nil), forCellReuseIdentifier: "campsCell")
        campsTable.delegate = self
        campsTable.dataSource = self
        
        
        TaskView.frame = CGRect(x: 0, y: 154, width: screenWidth, height: 36)
        TopView.addSubview(TaskView)
        
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
        if(taskTag == 1)
        {
        for var btn in TaskBtnCollection
        {
            btn.isSelected = false
        }
   
        sender.isSelected = true
        shadowView.frame = CGRect(x: sender.frame.origin.x, y: 34, width: sender.frame.size.width, height: 1)
        sender.setTitleColor(SelectedBtnColor, for: .selected)
        }
        
            }
    
    
    
    //TableView DataSource and DataDelegate......
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  Cell:CampsDetailTableCell = tableView.dequeueReusableCell(withIdentifier: "campsCell", for: indexPath) as! CampsDetailTableCell
        
        
        switch indexPath.row {
        case 0:
            Cell.iconImgbtn.setImage(UIImage.init(named: "placeholder.png"), for: .normal)
            Cell.lblText.text = "Jaipur, Rajasthan"
        case 1:
            Cell.iconImgbtn.setImage(UIImage.init(named: "Hospital.png"), for: .normal)
            Cell.lblText.text = "Fortis hospital"
        case 2:
            Cell.iconImgbtn.setImage(UIImage.init(named: "email.png"), for: .normal)
            Cell.lblText.text = "shulekhabhandri@gmail.com"
        case 3:
            Cell.iconImgbtn.setImage(UIImage.init(named: "cell.png"), for: .normal)
            Cell.lblText.text = "0141-2590807"
        case 4:
            Cell.iconImgbtn.setImage(UIImage.init(named: "rupee-indian.png"), for: .normal)
            Cell.lblText.text = "200"
        default:
            break
        }
        
        return Cell
    }
    
    
    
    
    @IBAction func BackBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
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
