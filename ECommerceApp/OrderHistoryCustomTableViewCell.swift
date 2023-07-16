//
//  OrderHistoryCustomTableViewCell.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 14/07/23.
//

import UIKit

class OrderHistoryCustomTableViewCell: UITableViewCell {

    //MARK: -IBOutlet 
    @IBOutlet weak var orderproName: UILabel!
    @IBOutlet weak var orderproQuantity: UILabel!
    @IBOutlet weak var orderproPrice: UILabel!
    @IBOutlet weak var orderprototalPrice: UILabel!
    @IBOutlet weak var orderpromessagesuccessfull: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
