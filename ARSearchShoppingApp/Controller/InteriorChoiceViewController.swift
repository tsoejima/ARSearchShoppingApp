//
//  InteriorChoiceViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/12/06.
//

import UIKit

class InteriorChoiceViewController: UIViewController {

    @IBOutlet weak var ASBCT1: UIView!
    @IBOutlet weak var ASBCT2: UIView!
    @IBOutlet weak var ASBCT3: UIView!
    @IBOutlet weak var ASBCT4: UIView!
    @IBOutlet weak var ASBCT5: UIView!
    
    @IBOutlet weak var ASBCB1: UIView!
    @IBOutlet weak var ASBCB2: UIView!
    @IBOutlet weak var ASBCB3: UIView!
    @IBOutlet weak var ASBCB4: UIView!
    
    @IBOutlet weak var ASBCS1: UIView!
    @IBOutlet weak var ASBCS2: UIView!
    @IBOutlet weak var ASBCS3: UIView!
    @IBOutlet weak var ASBCS4: UIView!
    @IBOutlet weak var ASBCS5: UIView!
    
    @IBOutlet weak var ASMGT1: UIImageView!
    @IBOutlet weak var ASMGT2: UIImageView!
    @IBOutlet weak var ASMGT3: UIImageView!
    @IBOutlet weak var ASMGT4: UIImageView!
    @IBOutlet weak var ASMGT5: UIImageView!
    
    @IBOutlet weak var ASMGB1: UIImageView!
    @IBOutlet weak var ASMGB2: UIImageView!
    @IBOutlet weak var ASMGB3: UIImageView!
    @IBOutlet weak var ASMGB4: UIImageView!
    
    @IBOutlet weak var ASMGS1: UIImageView!
    @IBOutlet weak var ASMGS2: UIImageView!
    @IBOutlet weak var ASMGS3: UIImageView!
    @IBOutlet weak var ASMGS4: UIImageView!
    @IBOutlet weak var ASMGS5: UIImageView!
    
    @IBOutlet weak var ASTLT1: UITextField!
    @IBOutlet weak var ASTLT2: UITextField!
    @IBOutlet weak var ASTLT3: UITextField!
    @IBOutlet weak var ASTLT4: UITextField!
    @IBOutlet weak var ASTLT5: UITextField!
    
    @IBOutlet weak var ASTLB1: UITextField!
    @IBOutlet weak var ASTLB2: UITextField!
    @IBOutlet weak var ASTLB3: UITextField!
    @IBOutlet weak var ASTLB4: UITextField!
    
    @IBOutlet weak var ASLTS1: UITextField!
    @IBOutlet weak var ASLTS2: UITextField!
    @IBOutlet weak var ASLTS3: UITextField!
    @IBOutlet weak var ASLTS4: UITextField!
    @IBOutlet weak var ASLTS5: UITextField!
    
    @IBOutlet weak var TopTitleView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.shadowOpacity = 0.5
        gradientLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        gradientLayer.shadowRadius = 1
        gradientLayer.shadowColor = UIColor.systemGray.cgColor
        gradientLayer.frame = self.TopTitleView.bounds
        //グラデーションカラーの選択
        let color1 = UIColor(red: 0.521, green: 0.552, blue:1.000, alpha: 1.000).cgColor
        let color2 = UIColor(red: 0.800, green: 0.996, blue:1.000, alpha: 1.000).cgColor
        gradientLayer.colors = [color1, color2]
        //グラデーションの方向を指定
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 1 , y: 1)
        //グラデーションレイヤーの表示
        self.TopTitleView.layer.insertSublayer(gradientLayer,at:0)
        
        ASBCT1.layer.cornerRadius = 15
        ASMGT1.layer.cornerRadius = 15
        ASTLT1.layer.cornerRadius = 18
        ASTLT1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLT1.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCT1.layer.shadowOpacity = 0.5
        ASBCT1.layer.shadowRadius = 0.1
        ASBCT1.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCT1.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCT2.layer.cornerRadius = 15
        ASMGT2.layer.cornerRadius = 15
        ASTLT2.layer.cornerRadius = 18
        ASTLT2.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLT2.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCT2.layer.shadowOpacity = 0.5
        ASBCT2.layer.shadowRadius = 0.1
        ASBCT2.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCT2.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCT3.layer.cornerRadius = 15
        ASMGT3.layer.cornerRadius = 15
        ASTLT3.layer.cornerRadius = 18
        ASTLT3.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLT3.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCT3.layer.shadowOpacity = 0.5
        ASBCT3.layer.shadowRadius = 0.1
        ASBCT3.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCT3.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)

        ASBCT4.layer.cornerRadius = 15
        ASMGT4.layer.cornerRadius = 15
        ASTLT4.layer.cornerRadius = 18
        ASTLT4.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLT4.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCT4.layer.shadowOpacity = 0.5
        ASBCT4.layer.shadowRadius = 0.1
        ASBCT4.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCT4.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCT5.layer.cornerRadius = 15
        ASMGT5.layer.cornerRadius = 15
        ASTLT5.layer.cornerRadius = 18
        ASTLT5.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLT5.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCT5.layer.shadowOpacity = 0.5
        ASBCT5.layer.shadowRadius = 0.1
        ASBCT5.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCT5.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCB1.layer.cornerRadius = 15
        ASMGB1.layer.cornerRadius = 15
        ASTLB1.layer.cornerRadius = 18
        ASTLB1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLB1.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCB1.layer.shadowOpacity = 0.5
        ASBCB1.layer.shadowRadius = 0.1
        ASBCB1.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCB1.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCB2.layer.cornerRadius = 15
        ASMGB2.layer.cornerRadius = 15
        ASTLB2.layer.cornerRadius = 18
        ASTLB2.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLB2.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCB2.layer.shadowOpacity = 0.5
        ASBCB2.layer.shadowRadius = 0.1
        ASBCB2.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCB2.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCB3.layer.cornerRadius = 15
        ASMGB3.layer.cornerRadius = 15
        ASTLB3.layer.cornerRadius = 18
        ASTLB3.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLB3.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCB3.layer.shadowOpacity = 0.5
        ASBCB3.layer.shadowRadius = 0.1
        ASBCB3.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCB3.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCB4.layer.cornerRadius = 15
        ASMGB4.layer.cornerRadius = 15
        ASTLB4.layer.cornerRadius = 18
        ASTLB4.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLB4.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCB4.layer.shadowOpacity = 0.5
        ASBCB4.layer.shadowRadius = 0.1
        ASBCB4.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCB4.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCS1.layer.cornerRadius = 15
        ASMGS1.layer.cornerRadius = 15
        ASLTS1.layer.cornerRadius = 18
        ASLTS1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASLTS1.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCS1.layer.shadowOpacity = 0.5
        ASBCS1.layer.shadowRadius = 0.1
        ASBCS1.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCS1.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCS2.layer.cornerRadius = 15
        ASMGS2.layer.cornerRadius = 15
        ASLTS2.layer.cornerRadius = 18
        ASLTS2.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASLTS2.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCS2.layer.shadowOpacity = 0.5
        ASBCS2.layer.shadowRadius = 0.1
        ASBCS2.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCS2.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCS3.layer.cornerRadius = 15
        ASMGS3.layer.cornerRadius = 15
        ASLTS3.layer.cornerRadius = 18
        ASLTS3.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASLTS3.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCS3.layer.shadowOpacity = 0.5
        ASBCS3.layer.shadowRadius = 0.1
        ASBCS3.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCS3.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCS4.layer.cornerRadius = 15
        ASMGS4.layer.cornerRadius = 15
        ASLTS4.layer.cornerRadius = 18
        ASLTS4.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASLTS4.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCS4.layer.shadowOpacity = 0.5
        ASBCS4.layer.shadowRadius = 0.1
        ASBCS4.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCS4.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCS5.layer.cornerRadius = 15
        ASMGS5.layer.cornerRadius = 15
        ASLTS5.layer.cornerRadius = 18
        ASLTS5.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASLTS5.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCS5.layer.shadowOpacity = 0.5
        ASBCS5.layer.shadowRadius = 0.1
        ASBCS5.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCS5.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ASButtonT1(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "DiningTableData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonT2(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "FoldingTableData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonT3(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "PCDeskData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonT4(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "KitchenBoardData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonT5(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "RangeStandData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonB1(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "StorageBedData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonB2(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "LowBedData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonB3(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "FabricSofaData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonB4(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "SofabedData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonS1(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "PlachestData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonS2(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "WoodenRackData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonS3(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "SteelRackData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonS4(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "CabinetData"
        self.present(next, animated: true)
    }
    @IBAction func ASButtonS5(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "DresserData"
        self.present(next, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
