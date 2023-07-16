//
//  JewelleryCustomCell.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 12/07/23.
//

import UIKit

class JewelleryCustomCell: UICollectionViewCell {

    //MARK: -IBOutlet 
    @IBOutlet weak var jewelleryView: UIView!
    @IBOutlet weak var jewelleryImg: UIImageView!
    @IBOutlet weak var jewelleryName: UILabel!
    @IBOutlet weak var jewelleryPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
