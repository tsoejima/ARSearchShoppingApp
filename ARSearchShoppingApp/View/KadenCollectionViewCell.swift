//
//  KadenCollectionViewCell.swift
//  ARSearchShoppingApp
//
//  Created by 副島拓哉 on 2020/11/22.
//

import UIKit

class KadenCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundImageView.layer.cornerRadius = 12
        // Initialization code
    }

}
