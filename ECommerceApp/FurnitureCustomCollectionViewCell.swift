//
//  FurnitureCustomCollectionViewCell.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 12/07/23.
//

import UIKit

class FurnitureCustomCollectionViewCell: UICollectionViewCell {

    //MARK: -IBOutlet
    @IBOutlet weak var furnitureImg: UIImageView!
    @IBOutlet weak var furnitureName: UILabel!
    @IBOutlet weak var furniturePrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
