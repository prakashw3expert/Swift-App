//
//  SuccessStoriesVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 24/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class SuccessStoriesVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet var SuccessCollecationView: UICollectionView!
    
    @IBOutlet var AddNewBtn: UIButton!
    
    let successArrData = ["Patient With Swallowing Condition Says UMMC Endocrine Surgeon and Staff are 'Top Notch'","Sed rhoncus justo risus, vitae tristique lectus varius a.","Aliquam solicitudin facilisis semper.","DonecSollitusing pretim feuters"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.SuccessCollecationView.register(UINib(nibName: "SuccessCollectionCell", bundle: nil), forCellWithReuseIdentifier: "successCell")
        SuccessCollecationView.delegate = self
        SuccessCollecationView.dataSource = self
        //SuccessCollecationView!.contentInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
    
        
        
        AddNewBtn.layer.cornerRadius = 25
        AddNewBtn.clipsToBounds = true
        
    }
    
    
    
    //UICollection view DataSource and Delegate Functionsss
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
       
        
        //we are just measuring height so we add a padding constant to give the label some room to breathe!
        let padding: CGFloat = 190
        
        //estimate each cell's height
        
        
        let size = estimateFrameForText(text:successArrData[indexPath.row])
        
        
        
        let width = (screenWidth - 40)/2
       let  height = size.height * (size.width/(screenWidth-16)) + padding
        if(indexPath.row == 0)
        {
         return CGSize(width: Int(width) , height: 250)
        
        }
        else if(indexPath.row == 1)
        {
            return CGSize(width: Int(width) , height: 200)
            
        }
        
        else if(indexPath.row == 2)
        {
            return CGSize(width: Int(width) , height: 300)
            
        }
        else if(indexPath.row == 3)
        {
            return CGSize(width: Int(width) , height: 350)
            
        }
        
        return CGSize(width: Int(width) , height: Int(height))
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "successCell", for: indexPath as IndexPath) as! SuccessCollectionCell
        cell.lblTitle.text = successArrData[indexPath.row]
        
        
        return cell
    }
    
    
    
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        
        self.navigationController?.pushViewController(SuccessStoryFullVC(nibName: "SuccessStoryFullVC", bundle: nil), animated: true)
        
       
    }

    func estimateFrameForText(text: String) -> CGSize {
        //we make the height arbitrarily large so we don't undershoot height in calculation
        
        let myString: NSString = text as NSString
        let size: CGSize = myString.size(attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 14.0)])
        return size
    }
    
    
    
    
    @IBAction func MenuAction(_ sender: Any) {
       self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
        
    }

    @IBAction func AddNewStoryAction(_ sender: Any) {
        
        self.navigationController?.pushViewController(AddNewSuccessStoryVC(nibName: "AddNewSuccessStoryVC", bundle: nil), animated: true)
        
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






