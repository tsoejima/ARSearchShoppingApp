//
//  ARHomeViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/11/22.
//

import UIKit

class ARHomeViewController: UIViewController {

    @IBOutlet weak var StartButtonBackground: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        
        StartButtonBackground.layer.cornerRadius = 25
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.shadowOpacity = 0.5
        gradientLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        gradientLayer.shadowRadius = 1
        gradientLayer.shadowColor = UIColor.systemGray.cgColor
        gradientLayer.frame = self.StartButtonBackground.bounds
        gradientLayer.cornerRadius = 25
        //グラデーションカラーの選択
        let color1 = UIColor(red: 0.521, green: 0.552, blue:1.000, alpha: 1.000).cgColor
        let color2 = UIColor(red: 0.800, green: 0.996, blue:1.000, alpha: 1.000).cgColor
        gradientLayer.colors = [color1, color2]
        //グラデーションの方向を指定
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 1 , y: 1)
        //グラデーションレイヤーの表示
        self.StartButtonBackground.layer.insertSublayer(gradientLayer,at:0)
        
        // Do any additional setup after loading the view.
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
