//
//  Dashboard.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 17/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class Dashboard: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var DasboardCollection: UICollectionView!

    
    @IBOutlet var tableHeightConstraint: NSLayoutConstraint!
    @IBOutlet var DasboardClcHeightConstraint: NSLayoutConstraint!
    @IBOutlet var DasboardTable: UITableView!
    var radius = 0.0
    let titleArr = ["Search Doctor","Search Camps","Search Hospital","Compare","Cureted Advice","Success Story"]
    let detailarr = ["More than 51,00 Dotors","More than 51,00 Camps","More than 51,00 Hospital","Your Choice","More than 51,00 Camps","More than 51,00 Dotors",]
    
    let imageArr = ["doctorc.png","camps.png","Hospital.png","Hospital.png","hand.png","story.png"]
    
    
    @IBOutlet var scrView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
        
        
       self.DasboardCollection.register(UINib(nibName: "DasboardCollectionCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        self.DasboardTable.register(UINib(nibName: "DasBoardTableCell", bundle: nil), forCellReuseIdentifier: "TblCell")
        
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
   // collectionview
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var width = 100
        var height = 140
        radius = 45
        DasboardClcHeightConstraint.constant = 284
        if(((screenWidth-16)/3) > 105)
        {
          height = 158
          width = 119
          radius = 54.5
          DasboardClcHeightConstraint.constant = 320
            
        }
        
        return CGSize(width: width , height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath) as! DasboardCollectionCell
        
        
        cell.titleLbl.text = titleArr[indexPath.row]
        cell.detailLbl.text = detailarr[indexPath.row]
        cell.img.image = UIImage.init(named: imageArr[indexPath.row])
        
    
        
        
        
        if (indexPath.row % 3 == 0)
        {
        cell.img.layer.borderColor = themeColor.cgColor
        
        }
        if (indexPath.row % 3 == 1)
        {
            cell.img.layer.borderColor = UIColor.init(red: 183.0/255.0, green: 68.0/255.0, blue: 133.0/255.0, alpha: 1.0).cgColor
            
        }
        if (indexPath.row % 3 == 2)
        {
            cell.img.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 117.0/255.0, blue: 118.0/255.0, alpha: 1.0).cgColor
            
            
        }
        
        
        cell.img.layer.cornerRadius = CGFloat(radius)
        cell.img.layer.borderWidth = 4
        cell.img.clipsToBounds = true
        
        print(cell.img.frame.size)
        
        return cell
    }
    
    
    
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        
        if(indexPath.row == 0)
        {
            //let page = UINib(nibName: "DoctorSearchVC", bundle: nil)
            self.navigationController?.pushViewController(DoctorSearchVC(nibName: "DoctorSearchVC", bundle: nil), animated: true)
            
        }
        else if(indexPath.row == 1)
        {
        self.navigationController?.pushViewController(CampsSearchVC(nibName: "CampsSearchVC", bundle: nil), animated: true)
        
        }
        else if(indexPath.row == 2)
        {
          self.navigationController?.pushViewController(HospitalSearchVC(nibName: "HospitalSearchVC", bundle: nil), animated: true)
        }
        else if(indexPath.row == 3)
        {
            self.navigationController?.pushViewController(CompareHospitalVC(nibName: "CompareHospitalVC", bundle: nil), animated: true)
        }

        else if(indexPath.row == 5)
        {
            self.navigationController?.pushViewController(SuccessStoriesVC(nibName: "SuccessStoriesVC", bundle: nil), animated: true)
        }
    }
    
    
    
    
    
   //MARK: UITableView Delegate And DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        tableHeightConstraint.constant = 120*5
       // let height = tableView.frame.origin.y
        scrView.contentSize = CGSize(width: screenWidth, height: 1000)
        
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: DasBoardTableCell = tableView.dequeueReusableCell(withIdentifier: "TblCell", for: indexPath) as! DasBoardTableCell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        self.navigationController?.pushViewController(DasboardNewsVC(nibName: "DasboardNewsVC", bundle: nil), animated: true)
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MenuAction(_ sender: Any) {
        
        self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
        
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
