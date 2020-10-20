//
//  HomeViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/10/19.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var SearchBar: UITextField!
    @IBOutlet weak var ARPRView: UIView!
    //RecomendImage
    @IBOutlet weak var RecomendImage1: UIImageView!
    @IBOutlet weak var RecomendImage2: UIImageView!
    @IBOutlet weak var RecomendImage3: UIImageView!
    @IBOutlet weak var RecomendImage4: UIImageView!
    @IBOutlet weak var RecomendImage5: UIImageView!
    @IBOutlet weak var RecomendImage6: UIImageView!
    //HistoryImage
    @IBOutlet weak var HistoryImage1: UIImageView!
    @IBOutlet weak var HistoryImage2: UIImageView!
    @IBOutlet weak var HistoryImage3: UIImageView!
    @IBOutlet weak var HistoryImage4: UIImageView!
    @IBOutlet weak var HistoryImage5: UIImageView!
    @IBOutlet weak var HistoryImage6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIの設定
        //ARPRView
        SearchBar.layer.cornerRadius = 15
        ARPRView.layer.cornerRadius = 15
        ARPRView.layer.borderColor = UIColor.systemGray4.cgColor
        ARPRView.layer.borderWidth = 1
        
        //RecomendView
        RecomendImage1.layer.cornerRadius = 10
        RecomendImage2.layer.cornerRadius = 10
        RecomendImage3.layer.cornerRadius = 10
        RecomendImage4.layer.cornerRadius = 10
        RecomendImage5.layer.cornerRadius = 10
        RecomendImage6.layer.cornerRadius = 10
        
        //HistoryView
        HistoryImage1.layer.cornerRadius = 10
        HistoryImage2.layer.cornerRadius = 10
        HistoryImage3.layer.cornerRadius = 10
        HistoryImage4.layer.cornerRadius = 10
        HistoryImage5.layer.cornerRadius = 10
        HistoryImage6.layer.cornerRadius = 10
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
