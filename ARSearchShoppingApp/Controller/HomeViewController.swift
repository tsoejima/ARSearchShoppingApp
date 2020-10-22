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
    //TopScrollView
    @IBOutlet weak var ScrollView: UIView!
    private var pageControl: UIPageControl!
    //NavigateiCon
    @IBOutlet weak var NavigationiCon: UIBarButtonItem!
    //RecomendImage
    @IBOutlet weak var RecomendDetailButton: UIButton!
    @IBOutlet weak var RecomendImage1: UIImageView!
    @IBOutlet weak var RecomendImage2: UIImageView!
    @IBOutlet weak var RecomendImage3: UIImageView!
    @IBOutlet weak var RecomendImage4: UIImageView!
    @IBOutlet weak var RecomendImage5: UIImageView!
    @IBOutlet weak var RecomendImage6: UIImageView!
    //HistoryImage
    @IBOutlet weak var HistoryDetailButton: UIButton!
    @IBOutlet weak var HistoryImage1: UIImageView!
    @IBOutlet weak var HistoryImage2: UIImageView!
    @IBOutlet weak var HistoryImage3: UIImageView!
    @IBOutlet weak var HistoryImage4: UIImageView!
    @IBOutlet weak var HistoryImage5: UIImageView!
    @IBOutlet weak var HistoryImage6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //NavigationBar設定
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white] //タイトルに画像ができない場合のタイトル色
        navigationController?.navigationBar.isTranslucent = false //透過なし設定
        navigationItem.titleView = UIImageView(image: UIImage(named: "Topicon:nnn.png")) //画像設定
        
        //NavigationController
        UITabBar.appearance().barTintColor = UIColor.red
        
        //UIImageView(image:UIImage(named:"ホーム.jpg"))
        //UIの設定
        //ARPRView
        SearchBar.layer.cornerRadius = 15
        ARPRView.layer.cornerRadius = 15
        ARPRView.layer.borderColor = UIColor.systemGray4.cgColor
        ARPRView.layer.borderWidth = 1
        
        //RecomendView
        RecomendDetailButton.layer.cornerRadius = 15
        RecomendDetailButton.layer.backgroundColor = UIColor(red: 0.211, green: 0.258, blue:0.337, alpha: 1.000).cgColor
        RecomendImage1.layer.cornerRadius = 10
        RecomendImage2.layer.cornerRadius = 10
        RecomendImage3.layer.cornerRadius = 10
        RecomendImage4.layer.cornerRadius = 10
        RecomendImage5.layer.cornerRadius = 10
        RecomendImage6.layer.cornerRadius = 10
        
        //HistoryView
        HistoryDetailButton.layer.cornerRadius = 15
        HistoryDetailButton.layer.backgroundColor = UIColor(red: 0.211, green: 0.258, blue:0.337, alpha: 1.000).cgColor
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
