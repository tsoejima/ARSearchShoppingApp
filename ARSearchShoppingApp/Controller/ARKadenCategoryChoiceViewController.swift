//
//  ARKadenCategoryChoiceViewController.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/11/22.
//

import UIKit

class ARKadenCategoryChoiceViewController: UIViewController {
    @IBOutlet weak var horizontalCollectionView: UICollectionView!

       var viewWidth: CGFloat!
       var viewHeight: CGFloat!
       var cellWidth: CGFloat!
       var cellHeight: CGFloat!
       var cellOffset: CGFloat!
       var navHeight: CGFloat!

       var photoArray = ["ny","italy","australia","france"]
       var titleArray = ["ニューヨーク","イタリア","オーストラリア","フランス"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewWidth = view.frame.width
                viewHeight = view.frame.height
                navHeight = self.navigationController?.navigationBar.frame.size.height

                horizontalCollectionView.delegate = self
                horizontalCollectionView.dataSource = self

                let nib = UINib(nibName: "KadenCollectionViewCell", bundle: .main)
                horizontalCollectionView.register(nib, forCellWithReuseIdentifier: "cell")

                self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
                self.navigationController!.navigationBar.shadowImage = UIImage()
                self.navigationController?.navigationBar.tintColor = .white
                self.navigationController?.navigationBar.titleTextAttributes = [
                    .foregroundColor: UIColor.white
                ]
    }
}
extension ARKadenCategoryChoiceViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! KadenCollectionViewCell
        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 12
        cell.layer.shadowOpacity = 0.4
        cell.layer.shadowRadius = 12
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 8, height: 8)
        cell.layer.masksToBounds = false
        var count:Int = "\(titleArray[indexPath.row])".count
        var mojicount = 9 - count
        var Space = ""
        for i in 1...mojicount{
            Space = Space + "　"
        }
        cell.titleLabel.text = "\(titleArray[indexPath.row])" + Space
        cell.dataLabel.text = "06/08~06/15"
        cell.backgroundImageView.image = UIImage(named: photoArray[indexPath.row])
        return cell

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 24
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        cellWidth = viewWidth-75
        cellHeight = viewHeight-300
        cellOffset = viewWidth-cellWidth
        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: -navHeight,left: cellOffset/2,bottom: 0,right: cellOffset/2)
    }

}

