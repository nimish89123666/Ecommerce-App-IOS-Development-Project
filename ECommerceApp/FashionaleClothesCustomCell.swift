//
//  FashionaleClothesCustomCell.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 11/07/23.
//

import UIKit

protocol FashionCellDelegate: AnyObject {
    func btnacc(withData data: String)
}

class FashionaleClothesCustomCell: UICollectionViewCell {
    
    
    weak var delegate: FashionCellDelegate?
    
    @IBOutlet weak var clothesImg: UIImageView!
    @IBOutlet weak var clothesName: UILabel!
    @IBOutlet weak var clothesPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    @IBAction func btnacc(_ sender: UIButton) {
        delegate?.btnacc(withData: "")
    }
}
