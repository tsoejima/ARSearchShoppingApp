//
//  setTabBarViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/10/21.
//

import UIKit

class setTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.barTintColor = UIColor.systemGray5
        UITabBar.appearance().tintColor = UIColor(red: 0.211, green: 0.258, blue:0.337, alpha: 1.000)
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
