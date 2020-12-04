//
//  KadenChoiceViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/11/22.
//

import UIKit

class KadenChoiceViewController: UIViewController {

    @IBOutlet weak var TopTitleView: UIView!
    //生活家電横スクロール設定
    @IBOutlet weak var ASBC1: UIView!
    @IBOutlet weak var ASBC2: UIView!
    @IBOutlet weak var ASBC3: UIView!
    @IBOutlet weak var ASBC4: UIView!
    @IBOutlet weak var ASBCK1: UIView!
    @IBOutlet weak var ASBCK2: UIView!
    @IBOutlet weak var ASBCK3: UIView!
    
    @IBOutlet weak var ASMG1: UIImageView!
    @IBOutlet weak var ASMG2: UIImageView!
    @IBOutlet weak var ASMG3: UIImageView!
    @IBOutlet weak var ASMG4: UIImageView!
    @IBOutlet weak var ASMGK1: UIImageView!
    @IBOutlet weak var ASMGK2: UIImageView!
    @IBOutlet weak var ASMGK3: UIImageView!
    
    @IBOutlet weak var ASTL1: UITextField!
    @IBOutlet weak var ASTL2: UITextField!
    @IBOutlet weak var ASTL3: UITextField!
    @IBOutlet weak var ASTL4: UITextField!
    @IBOutlet weak var ASTLK1: UITextField!
    @IBOutlet weak var ASTLK2: UITextField!
    @IBOutlet weak var ASTLK3: UITextField!
    
    var itemChoiceCategory:String?
    
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
        
        //横スクロールUI設定
        ASBC1.layer.cornerRadius = 15
        ASMG1.layer.cornerRadius = 15
        ASTL1.layer.cornerRadius = 18
        ASTL1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTL1.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBC1.layer.shadowOpacity = 0.5
        ASBC1.layer.shadowRadius = 0.1
        ASBC1.layer.shadowColor = UIColor.systemGray.cgColor
        ASBC1.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBC2.layer.cornerRadius = 15
        ASMG2.layer.cornerRadius = 15
        ASTL2.layer.cornerRadius = 18
        ASTL2.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTL2.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBC2.layer.shadowOpacity = 0.5
        ASBC2.layer.shadowRadius = 0.1
        ASBC2.layer.shadowColor = UIColor.systemGray.cgColor
        ASBC2.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBC3.layer.cornerRadius = 15
        ASMG3.layer.cornerRadius = 15
        ASTL3.layer.cornerRadius = 18
        ASTL3.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTL3.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBC3.layer.shadowOpacity = 0.5
        ASBC3.layer.shadowRadius = 0.1
        ASBC3.layer.shadowColor = UIColor.systemGray.cgColor
        ASBC3.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBC4.layer.cornerRadius = 15
        ASMG4.layer.cornerRadius = 15
        ASTL4.layer.cornerRadius = 15
        ASTL4.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTL4.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBC4.layer.shadowOpacity = 0.5
        ASBC4.layer.shadowRadius = 0.1
        ASBC4.layer.shadowColor = UIColor.systemGray.cgColor
        ASBC4.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCK1.layer.cornerRadius = 15
        ASMGK1.layer.cornerRadius = 15
        ASTLK1.layer.cornerRadius = 18
        ASTLK1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLK1.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCK1.layer.shadowOpacity = 0.5
        ASBCK1.layer.shadowRadius = 0.1
        ASBCK1.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCK1.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCK2.layer.cornerRadius = 15
        ASMGK2.layer.cornerRadius = 15
        ASTLK2.layer.cornerRadius = 18
        ASTLK2.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLK2.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCK2.layer.shadowOpacity = 0.5
        ASBCK2.layer.shadowRadius = 0.1
        ASBCK2.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCK2.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        ASBCK3.layer.cornerRadius = 15
        ASMGK3.layer.cornerRadius = 15
        ASTLK3.layer.cornerRadius = 18
        ASTLK3.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        ASTLK3.layer.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.900).cgColor
        ASBCK3.layer.shadowOpacity = 0.5
        ASBCK3.layer.shadowRadius = 0.1
        ASBCK3.layer.shadowColor = UIColor.systemGray.cgColor
        ASBCK3.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        
        
    }
    
    @IBAction func ASButton1(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "WashingMachineData"
        self.present(next, animated: true)
    }
    @IBAction func ASButton2(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "TVData"
        self.present(next, animated: true)
    }
    
    @IBAction func ASButton3(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "AirCleanerData"
        self.present(next, animated: true)
    }
    
    @IBAction func ASButton4(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "HeaterData"
        self.present(next, animated: true)
    }
    
    @IBAction func ASButtonK1(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "Refrigerator"
        self.present(next, animated: true)
    }
    
    @IBAction func ASButtonK2(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "MicroWaveData"
        self.present(next, animated: true)
    }
    
    @IBAction func ASButtonK3(_ sender: Any) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "ARViewController") as! ViewController
        next.itemcategory = "RiceCookerData"
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
