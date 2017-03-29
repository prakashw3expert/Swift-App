//
//  HospitalVC.swift
//  CureadviserApp
//
//  Created by BekGround-2 on 22/03/17.
//  Copyright © 2017 BekGround-2. All rights reserved.
//

import UIKit




class HospitalVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,CalendarViewDataSource,CalendarViewDelegate {
    @IBOutlet var TaskBtnCollection: [UIButton]!
    
    @IBOutlet var curveView: UIView!
    @IBOutlet var firstSpecialistView: UIView!
    @IBOutlet var secondSpecilistView: UIView!
    @IBOutlet var bookAppointmentView: UIView!
    @IBOutlet var calendarView: CalendarView!
    
    @IBOutlet var specialistColection: UICollectionView!
    @IBOutlet var selectSpecialistView: UIView!
    @IBOutlet var btnSchedule: UIButton!
    @IBOutlet var specialistPager: UIPageControl!
    @IBOutlet var imgBackGround: UIImageView!
    @IBOutlet var imgLogo: UIImageView!
    var taskTag = 1
    @IBOutlet var topView: UIView!
    @IBOutlet var TaskView: UIScrollView!
    @IBOutlet var shadowView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: -10, y: 15))
        path.addLine(to: CGPoint(x: screenWidth+20, y: 45))
        
        //design path in layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = curveColor.cgColor
        shapeLayer.lineWidth = 65
        
        curveView.layer.addSublayer(shapeLayer)
        curveView.layer.shadowColor = UIColor.black.cgColor
        curveView.layer.shadowOffset = CGSize(width: 0, height: -70)
        curveView.layer.shadowOpacity = 0.5
        curveView.layer.shadowRadius = 20
        
        
        
        specialistColection.register(UINib(nibName: "SpecialistCollectionCell", bundle: nil), forCellWithReuseIdentifier: "SpecialistCell")
        specialistColection.delegate = self
        specialistColection.dataSource = self
        specialistPager.numberOfPages = 5
        
        TaskView.frame = CGRect(x: 0, y: 244, width: screenWidth, height: 40)
        topView.addSubview(TaskView)
        
        imgLogo.layer.cornerRadius = 5
        imgLogo.clipsToBounds = true
        
        btnSchedule.layer.cornerRadius = 25
        btnSchedule.clipsToBounds = true
        
        
        
        calendarView.delegate = self
        calendarView.dataSource = self
        calendarView.direction  = .horizontal
        
        
        let today = Date()
        self.calendarView.setDisplayDate(today, animated: false)
        
        
        
     
        
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

    //********* Calendar View Delegate and Data Source
    
    func startDate() -> Date? {
        var dateComponents = DateComponents()
        //dateComponents.month = -3
        
        let today = Date()
        
        let threeMonthsAgo = (self.calendarView.calendar as NSCalendar).date(byAdding: dateComponents, to: today, options: NSCalendar.Options())
        
        
        return threeMonthsAgo
    }
    
    func endDate() -> Date? {
        
        var dateComponents = DateComponents()
        
        dateComponents.year = 2;
        let today = Date()
        
        let twoYearsFromNow = (self.calendarView.calendar as NSCalendar).date(byAdding: dateComponents, to: today, options: NSCalendar.Options())
        
        return twoYearsFromNow
        
    }
    
    
//    override func viewDidLayoutSubviews() {
//        
//        super.viewDidLayoutSubviews()
//        
//        let width = self.bookAppointmentView.frame.size.width - 8.0 * 2
//        let height = width + 20.0
//        self.calendarView.frame = CGRect(x: 16.0, y: 32.0, width: width, height: height)
//        
//        
//    }
    
    
    // MARK : KDCalendarDelegate
    
    func calendar(_ calendar: CalendarView, didSelectDate date : Date, withEvents events: [CalendarEvent]) {
        
        for event in events {
            print("You have an event starting at \(event.startDate) : \(event.title)")
        }
        print("Did Select: \(date) with Events: \(events.count)")
        
        
        
    }
    
    func calendar(_ calendar: CalendarView, didScrollToMonth date : Date) {
        
       print(date)
    }
    
   
    
    //****** CollectionView Delegate and DataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    
    // collectionview
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpecialistCell", for: indexPath as IndexPath) as! SpecialistCollectionCell
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.specialistPager.currentPage = indexPath.row
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        
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
        
        
      //  DrDetailTbl.reloadData()
    }
    
    
    @IBAction func scheduleAction(_ sender: UIButton) {
        
        selectSpecialistView.frame = self.view.frame
        
        firstSpecialistView.isHidden = false
        secondSpecilistView.isHidden = true
        bookAppointmentView.isHidden = true
        self.view.addSubview(selectSpecialistView)
        
        
    }
    
    @IBAction func menuAction(_ sender: Any) {
        
      self.menuContainerViewController!.toggleLeftSideMenuCompletion({})
    }
    
    //******* Select Specialist View Actions ......
    
    @IBAction func FirstBackAction(_ sender: UIButton) {
        
        secondSpecilistView.isHidden = false
        firstSpecialistView.isHidden = true
        bookAppointmentView.isHidden = true
        
    }
    
    @IBAction func BackActionForClose(_ sender: UIButton) {
        
        self.selectSpecialistView.removeFromSuperview()
    }
    
    @IBAction func FirstSuccessBtnAction(_ sender: UIButton) {
        
        secondSpecilistView.isHidden = true
        firstSpecialistView.isHidden = true
        bookAppointmentView.isHidden = false
        
    }
    
    @IBAction func SecondSuccesBtnAction(_ sender: UIButton) {
        
        secondSpecilistView.isHidden = true
        firstSpecialistView.isHidden = false
        bookAppointmentView.isHidden = true
    }
    
    @IBAction func ConfirmAppointmentAction(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(ConfirmAppointmentVC(nibName: "ConfirmAppointmentVC", bundle: nil), animated: true)
        
    }
    
    @IBAction func AppointmentCancelAction(_ sender: Any) {
        
        self.selectSpecialistView.removeFromSuperview()
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


