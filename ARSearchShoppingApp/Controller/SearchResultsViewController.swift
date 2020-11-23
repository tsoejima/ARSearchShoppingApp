//
//  SearchResultsViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/11/23.
//

import UIKit
import Firebase
import FirebaseFirestore

class SearchResultsViewController: UIViewController {
    
    //IT
    @IBOutlet weak var IT1: UIView!
    @IBOutlet weak var IT2: UIView!
    @IBOutlet weak var IT3: UIView!
    @IBOutlet weak var IT4: UIView!
    @IBOutlet weak var IT5: UIView!
    @IBOutlet weak var IT6: UIView!
    @IBOutlet weak var IT7: UIView!
    @IBOutlet weak var IT8: UIView!
    @IBOutlet weak var IT9: UIView!
    @IBOutlet weak var IT10: UIView!
    @IBOutlet var ITM: UIView!
    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    //ITSVB1
    @IBOutlet weak var ITSVB1: UIView!
    @IBOutlet weak var ITSVB2: UIView!
    @IBOutlet weak var ITSVB3: UIView!
    @IBOutlet weak var ITSVB4: UIView!
    @IBOutlet weak var ITSVB5: UIView!
    @IBOutlet weak var ITSVB6: UIView!
    @IBOutlet weak var ITSBV7: UIView!
    @IBOutlet weak var ITSBV8: UIView!
    @IBOutlet weak var ITSBV9: UIView!
    @IBOutlet weak var ITSVB10: UIView!
    
    //ITSVIM
    @IBOutlet weak var ITSVIM1: UIImageView!
    @IBOutlet weak var ITSVIM2: UIImageView!
    @IBOutlet weak var ITSVIM3: UIImageView!
    @IBOutlet weak var ITSVIM4: UIImageView!
    @IBOutlet weak var ITSVIM5: UIImageView!
    @IBOutlet weak var ITSVIM6: UIImageView!
    @IBOutlet weak var ITSVIM7: UIImageView!
    @IBOutlet weak var ITSVIM8: UIImageView!
    @IBOutlet weak var ITSVIM9: UIImageView!
    @IBOutlet weak var ITSVIM10: UIImageView!
    
    //ITPRL
    @IBOutlet weak var ITPRL1: UILabel!
    @IBOutlet weak var ITPRL2: UILabel!
    @IBOutlet weak var ITPRL3: UILabel!
    @IBOutlet weak var ITPRL4: UILabel!
    @IBOutlet weak var ITPRL5: UILabel!
    @IBOutlet weak var ITPRL6: UILabel!
    @IBOutlet weak var ITPRL7: UILabel!
    @IBOutlet weak var ITPRL8: UILabel!
    @IBOutlet weak var ITPRL9: UILabel!
    @IBOutlet weak var ITPRL10: UILabel!
    
    //ITEXL
    @IBOutlet weak var ITEXL1: UITextView!
    @IBOutlet weak var ITEXL2: UITextView!
    @IBOutlet weak var ITEXL3: UITextView!
    @IBOutlet weak var ITEXL4: UITextView!
    @IBOutlet weak var ITEXL5: UITextView!
    @IBOutlet weak var ITEXL6: UITextView!
    @IBOutlet weak var ITEXL7: UITextView!
    @IBOutlet weak var ITEXL8: UITextView!
    @IBOutlet weak var ITEXL9: UITextView!
    @IBOutlet weak var ITEXL10: UITextView!
    
    //ITMKL
    @IBOutlet weak var ITMKL1: UILabel!
    @IBOutlet weak var ITMKL2: UILabel!
    @IBOutlet weak var ITMKL3: UILabel!
    @IBOutlet weak var ITMKL4: UILabel!
    @IBOutlet weak var ITMKL5: UILabel!
    @IBOutlet weak var ITMKL6: UILabel!
    @IBOutlet weak var ITMKL7: UILabel!
    @IBOutlet weak var ITMKL8: UILabel!
    @IBOutlet weak var ITMKL9: UILabel!
    @IBOutlet weak var ITMKL10: UILabel!
    
    //ITSZL
    @IBOutlet weak var ITSZL1: UILabel!
    @IBOutlet weak var ITSZL2: UILabel!
    @IBOutlet weak var ITSZL3: UILabel!
    @IBOutlet weak var ITSZL4: UILabel!
    @IBOutlet weak var ITSZL5: UILabel!
    @IBOutlet weak var ITSZL6: UILabel!
    @IBOutlet weak var ITSZL7: UILabel!
    @IBOutlet weak var ITSZL8: UILabel!
    @IBOutlet weak var ITSZL9: UILabel!
    @IBOutlet weak var ITSZL10: UILabel!
    
    //ITOVL
    @IBOutlet weak var ITOVL1: UITextView!
    @IBOutlet weak var ITOVL2: UITextView!
    @IBOutlet weak var ITOVL3: UITextView!
    @IBOutlet weak var ITOVL4: UITextView!
    @IBOutlet weak var ITOVL5: UITextView!
    @IBOutlet weak var ITOVL6: UITextView!
    @IBOutlet weak var ITOVL7: UITextView!
    @IBOutlet weak var ITOVL8: UITextView!
    @IBOutlet weak var ITOVL9: UITextView!
    @IBOutlet weak var ITOVL10: UITextView!
    
    
    var SelectCategory:String?
    var xSize:Int?
    
    var itemImageArray:[String] = []
    var itemPriceArray:[String] = []
    var itemNameArray:[String] = []
    var itemMakerArray:[String] = []
    var itemSizeXArray:[String] = []
    var itemSizeYArray:[String] = []
    var itemSizeZArray:[String] = []
    var itemExplanationArray:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(SelectCategory!)
        print(xSize!)
        //IT設定
        IT1.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT2.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT3.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT4.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT5.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT6.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT7.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT8.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT9.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        IT10.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        ScrollView.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        ContentView.layer.backgroundColor = UIColor(red: 0.000, green: 0.000, blue:0.000, alpha: 0.000).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.ITM.bounds
        //グラデーションカラーの選択
        let color1 = UIColor(red: 0.521, green: 0.552, blue:1.000, alpha: 1.000).cgColor
        let color2 = UIColor(red: 0.800, green: 0.996, blue:1.000, alpha: 1.000).cgColor
        gradientLayer.colors = [color1, color2]
        //グラデーションの方向を指定
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 1 , y: 1)
        //グラデーションレイヤーの表示
        self.ITM.layer.insertSublayer(gradientLayer,at:0)
        //ITSVB設定
        ITSVB1.layer.cornerRadius = 20
        ITSVIM1.layer.cornerRadius = 20
        ITSVIM1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSVB1.layer.shadowOpacity = 0.4
        ITSVB1.layer.shadowRadius = 10
        ITSVB1.layer.shadowColor = UIColor.systemGray.cgColor
        ITSVB1.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSVB2.layer.cornerRadius = 20
        ITSVIM2.layer.cornerRadius = 20
        ITSVIM2.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSVB2.layer.shadowOpacity = 0.4
        ITSVB2.layer.shadowRadius = 10
        ITSVB2.layer.shadowColor = UIColor.systemGray.cgColor
        ITSVB2.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSVB3.layer.cornerRadius = 20
        ITSVIM3.layer.cornerRadius = 20
        ITSVIM3.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSVB3.layer.shadowOpacity = 0.4
        ITSVB3.layer.shadowRadius = 10
        ITSVB3.layer.shadowColor = UIColor.systemGray.cgColor
        ITSVB3.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSVB4.layer.cornerRadius = 20
        ITSVIM4.layer.cornerRadius = 20
        ITSVIM4.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSVB4.layer.shadowOpacity = 0.4
        ITSVB4.layer.shadowRadius = 10
        ITSVB4.layer.shadowColor = UIColor.systemGray.cgColor
        ITSVB4.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSVB5.layer.cornerRadius = 20
        ITSVIM5.layer.cornerRadius = 20
        ITSVIM5.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSVB5.layer.shadowOpacity = 0.4
        ITSVB5.layer.shadowRadius = 10
        ITSVB5.layer.shadowColor = UIColor.systemGray.cgColor
        ITSVB5.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSVB6.layer.cornerRadius = 20
        ITSVIM6.layer.cornerRadius = 20
        ITSVIM6.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSVB6.layer.shadowOpacity = 0.4
        ITSVB6.layer.shadowRadius = 10
        ITSVB6.layer.shadowColor = UIColor.systemGray.cgColor
        ITSVB6.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSBV7.layer.cornerRadius = 20
        ITSVIM7.layer.cornerRadius = 20
        ITSVIM7.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSBV7.layer.shadowOpacity = 0.4
        ITSBV7.layer.shadowRadius = 10
        ITSBV7.layer.shadowColor = UIColor.systemGray.cgColor
        ITSBV7.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSBV8.layer.cornerRadius = 20
        ITSVIM8.layer.cornerRadius = 20
        ITSVIM8.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSBV8.layer.shadowOpacity = 0.4
        ITSBV8.layer.shadowRadius = 10
        ITSBV8.layer.shadowColor = UIColor.systemGray.cgColor
        ITSBV8.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSBV9.layer.cornerRadius = 20
        ITSVIM9.layer.cornerRadius = 20
        ITSVIM9.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSBV9.layer.shadowOpacity = 0.4
        ITSBV9.layer.shadowRadius = 10
        ITSBV9.layer.shadowColor = UIColor.systemGray.cgColor
        ITSBV9.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        ITSVB10.layer.cornerRadius = 20
        ITSVIM10.layer.cornerRadius = 20
        ITSVIM10.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ITSVB10.layer.shadowOpacity = 0.4
        ITSVB10.layer.shadowRadius = 10
        ITSVB10.layer.shadowColor = UIColor.systemGray.cgColor
        ITSVB10.layer.shadowOffset = CGSize(width: -5.0, height: 2.0)
        
        //表示設定
        

        //検索処理
        db.collection("\(SelectCategory!)").whereField("itemSizeX", isLessThanOrEqualTo: "\(xSize!)").order(by: "itemSizeX", descending: true).limit(to: 10)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        //print("\(document.documentID) => \(document.data())")
                        self.itemImageArray.append((document["itemUrl"] as? String)!)
                        self.itemPriceArray.append((document["itemPrice"] as? String)!)
                        self.itemNameArray.append((document["itemName"] as? String)!)
                        self.itemMakerArray.append((document["itemMaker"] as? String)!)
                        self.itemSizeXArray.append((document["itemSizeX"] as? String)!)
                        self.itemSizeYArray.append((document["itemSizeY"] as? String)!)
                        self.itemSizeZArray.append((document["itemSizeZ"] as? String)!)
                        self.itemExplanationArray.append((document["itemExplanation"] as? String)!)
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    }
                    //スライド１
                    let url1: URL? = URL(string:self.itemImageArray[0])
                    self.ITSVIM1.loadImageAsynchronously(url: url1)
                    self.ITPRL1.text = "税込み\(self.itemPriceArray[0])"
                    self.ITEXL1.text = self.itemNameArray[0]
                    self.ITMKL1.text = self.itemMakerArray[0]
                    self.ITSZL1.text = "サイズ\(self.itemSizeXArray[0])x\(self.itemSizeYArray[0])x\(self.itemSizeZArray[0])mm"
                    self.ITOVL1.text = self.itemExplanationArray[0]
                    //スライド２
                    let url2: URL? = URL(string:self.itemImageArray[1])
                    self.ITSVIM2.loadImageAsynchronously(url: url2)
                    self.ITPRL2.text = "税込み\(self.itemPriceArray[1])"
                    self.ITEXL2.text = self.itemNameArray[1]
                    self.ITMKL2.text = self.itemMakerArray[1]
                    self.ITSZL2.text = "サイズ\(self.itemSizeXArray[1])x\(self.itemSizeYArray[1])x\(self.itemSizeZArray[1])mm"
                    self.ITOVL2.text = self.itemExplanationArray[1]
                    //スライド3
                    let url3: URL? = URL(string:self.itemImageArray[2])
                    self.ITSVIM3.loadImageAsynchronously(url: url3)
                    self.ITPRL3.text = "税込み\(self.itemPriceArray[2])"
                    self.ITEXL3.text = self.itemNameArray[2]
                    self.ITMKL3.text = self.itemMakerArray[2]
                    self.ITSZL3.text = "サイズ\(self.itemSizeXArray[2])x\(self.itemSizeYArray[2])x\(self.itemSizeZArray[2])mm"
                    self.ITOVL3.text = self.itemExplanationArray[2]
                    //スライド4
                    let url4: URL? = URL(string:self.itemImageArray[3])
                    self.ITSVIM4.loadImageAsynchronously(url: url4)
                    self.ITPRL4.text = "税込み\(self.itemPriceArray[3])"
                    self.ITEXL4.text = self.itemNameArray[3]
                    self.ITMKL4.text = self.itemMakerArray[3]
                    self.ITSZL4.text = "サイズ\(self.itemSizeXArray[3])x\(self.itemSizeYArray[3])x\(self.itemSizeZArray[3])mm"
                    self.ITOVL4.text = self.itemExplanationArray[3]
                    //スライド5
                    let url5: URL? = URL(string:self.itemImageArray[4])
                    self.ITSVIM5.loadImageAsynchronously(url: url5)
                    self.ITPRL5.text = "税込み\(self.itemPriceArray[4])"
                    self.ITEXL5.text = self.itemNameArray[4]
                    self.ITMKL5.text = self.itemMakerArray[4]
                    self.ITSZL5.text = "サイズ\(self.itemSizeXArray[4])x\(self.itemSizeYArray[4])x\(self.itemSizeZArray[4])mm"
                    self.ITOVL5.text = self.itemExplanationArray[4]
                    //スライド6
                    let url6: URL? = URL(string:self.itemImageArray[5])
                    self.ITSVIM6.loadImageAsynchronously(url: url6)
                    self.ITPRL6.text = "税込み\(self.itemPriceArray[5])"
                    self.ITEXL6.text = self.itemNameArray[5]
                    self.ITMKL6.text = self.itemMakerArray[5]
                    self.ITSZL6.text = "サイズ\(self.itemSizeXArray[5])x\(self.itemSizeYArray[5])x\(self.itemSizeZArray[5])mm"
                    self.ITOVL6.text = self.itemExplanationArray[5]
                    //スライド7
                    let url7: URL? = URL(string:self.itemImageArray[6])
                    self.ITSVIM7.loadImageAsynchronously(url: url7)
                    self.ITPRL7.text = "税込み\(self.itemPriceArray[6])"
                    self.ITEXL7.text = self.itemNameArray[6]
                    self.ITMKL7.text = self.itemMakerArray[6]
                    self.ITSZL7.text = "サイズ\(self.itemSizeXArray[6])x\(self.itemSizeYArray[6])x\(self.itemSizeZArray[6])mm"
                    self.ITOVL7.text = self.itemExplanationArray[6]
                    //スライド8
                    let url8: URL? = URL(string:self.itemImageArray[7])
                    self.ITSVIM8.loadImageAsynchronously(url: url8)
                    self.ITPRL8.text = "税込み\(self.itemPriceArray[7])"
                    self.ITEXL8.text = self.itemNameArray[7]
                    self.ITMKL8.text = self.itemMakerArray[7]
                    self.ITSZL8.text = "サイズ\(self.itemSizeXArray[7])x\(self.itemSizeYArray[7])x\(self.itemSizeZArray[7])mm"
                    self.ITOVL8.text = self.itemExplanationArray[7]
                    //スライド9
                    let url9: URL? = URL(string:self.itemImageArray[8])
                    self.ITSVIM9.loadImageAsynchronously(url: url9)
                    self.ITPRL9.text = "税込み\(self.itemPriceArray[8])"
                    self.ITEXL9.text = self.itemNameArray[8]
                    self.ITMKL9.text = self.itemMakerArray[8]
                    self.ITSZL9.text = "サイズ\(self.itemSizeXArray[8])x\(self.itemSizeYArray[8])x\(self.itemSizeZArray[8])mm"
                    self.ITOVL9.text = self.itemExplanationArray[8]
                    //スライド10
                    let url10: URL? = URL(string:self.itemImageArray[9])
                    self.ITSVIM10.loadImageAsynchronously(url: url10)
                    self.ITPRL10.text = "税込み\(self.itemPriceArray[9])"
                    self.ITEXL10.text = self.itemNameArray[9]
                    self.ITMKL10.text = self.itemMakerArray[9]
                    self.ITSZL10.text = "サイズ\(self.itemSizeXArray[9])x\(self.itemSizeYArray[9])x\(self.itemSizeZArray[9])mm"
                    self.ITOVL10.text = self.itemExplanationArray[9]
                }
        }
        
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

extension UIImageView {
    func loadImageAsynchronously(url: URL?, defaultUIImage: UIImage? = nil) -> Void {

        if url == nil {
            self.image = defaultUIImage
            return
        }

        DispatchQueue.global().async {
            do {
                let imageData: Data? = try Data(contentsOf: url!)
                DispatchQueue.main.async {
                    if let data = imageData {
                        self.image = UIImage(data: data)
                    } else {
                        self.image = defaultUIImage
                    }
                }
            }
            catch {
                DispatchQueue.main.async {
                    self.image = defaultUIImage
                }
            }
        }
    }
}
