//
//  ConfirmAppointmentVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 23/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit

class ConfirmAppointmentVC: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet var txtGender: UITextField!
    @IBOutlet var imgDr: UIImageView!
    @IBOutlet var scrView: UIScrollView!
    
    
    var picker: UIPickerView = UIPickerView()
    let grnderData = ["Male","Female"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtGender.inputView = picker
        picker.dataSource = self
        picker.delegate = self
        
        
        scrView.contentSize = CGSize(width: screenWidth, height: 603)
        
        imgDr.layer.cornerRadius = 5
        imgDr.clipsToBounds = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        scrView.addGestureRecognizer(tapGesture)
    }

    func DismissKeyboard(){
    
    self.view.endEditing(true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.grnderData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(self.grnderData[row])
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func ConfirmAppointmentAction(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(MyAppointmentsVC(nibName: "MyAppointmentsVC", bundle: nil), animated: true)
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
