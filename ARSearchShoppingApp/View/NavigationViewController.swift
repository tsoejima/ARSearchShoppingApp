//
//  NavigationViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/10/21.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isTranslucent = false
        navigationBar.barTintColor = UIColor(red: 0.211, green: 0.258, blue:0.337, alpha: 1.000)
        navigationItem.titleView = UIImageView(image: UIImage(named: "topicon.png"))
        self.navigationController?.navigationBar.titleTextAttributes = [
                // 文字の色
                .foregroundColor: UIColor.white
            ]
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
