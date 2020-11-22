//
//  CategoryChoiceViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/11/22.
//

import UIKit
import Firebase
import FirebaseFirestore

let db = Firestore.firestore()
var count:Int = 0
var priceLavel:String!

class CategoryChoiceViewController: UIViewController {
    @IBOutlet weak var kadenViewBackground: UIView!
    @IBOutlet weak var kadenimageView: UIImageView!
    @IBOutlet weak var kadenLavelView: UIView!
    @IBOutlet weak var interiorViewBackground: UIView!
    @IBOutlet weak var interiorimageView: UIImageView!
    @IBOutlet weak var interiorLavelView: UIView!
    @IBOutlet weak var kadenCardBackground: UIView!
    @IBOutlet weak var interiorCardBackground: UIView!
    
    var priceLabelArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //家電設定
        kadenViewBackground.layer.cornerRadius = 20
        kadenimageView.layer.cornerRadius = 20
        kadenLavelView.layer.cornerRadius = 20
        kadenimageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        kadenLavelView.layer.maskedCorners = [.layerMaxXMaxYCorner ,.layerMinXMaxYCorner]
        
        kadenViewBackground.layer.shadowColor = UIColor.systemGray.cgColor
        kadenViewBackground.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        kadenViewBackground.layer.shadowRadius = 5
        kadenViewBackground.layer.shadowOpacity = 0.2
        //家具設定
        interiorViewBackground.layer.cornerRadius = 20
        interiorimageView.layer.cornerRadius = 20
        interiorLavelView.layer.cornerRadius = 20
        interiorimageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        interiorLavelView.layer.maskedCorners = [.layerMaxXMaxYCorner ,.layerMinXMaxYCorner]
        
        interiorViewBackground.layer.shadowColor = UIColor.systemGray.cgColor
        interiorViewBackground.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        interiorViewBackground.layer.shadowRadius = 5
        interiorViewBackground.layer.shadowOpacity = 0.2
        //背景設定
        kadenCardBackground.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        interiorCardBackground.backgroundColor = UIColor(red: 1.000, green: 1.000, blue:1.000, alpha: 0.000)
        
    }
    
    @IBAction func kadenbutton(_ sender: Any) {
        db.collection("MicroWaveData").whereField("itemSizeX", isLessThanOrEqualTo: "300")
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    }
                }
            }
    }
    @IBAction func interiorbutton(_ sender: Any) {
        db.collection("MicroWaveData").whereField("itemSizeX", isEqualTo: "165")
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        print("\(document.documentID) => \(document.data())")
                    }
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
