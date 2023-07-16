//
//  CartCustomTableViewCell.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 13/07/23.
//

import UIKit

class CartCustomTableViewCell: UITableViewCell {

    //MARK: -IBOutlet
    @IBOutlet weak var cartproductName: UILabel!
    @IBOutlet weak var cartproductPrice: UILabel!
    @IBOutlet weak var cartproductQuantity: UILabel!
    @IBOutlet weak var cartbuynowBtn: UIButton!
    @IBOutlet weak var removecartBtn: UIButton!
    
    // Add a weak reference to the navigation controller
    weak var navigationController: UINavigationController?

    var selectedProducts: CartBuyNow?

    // Add a weak reference to the table view
    weak var carttableView : UITableView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    //MARK: - IBAction Cart Buy Now
    @IBAction func cartbuynowAction(_ sender: Any) {
        
        guard let selectedProducts = selectedProducts else {
            return
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let buynowVC = storyboard.instantiateViewController(withIdentifier: "BuyNowViewController") as! BuyNowViewController
        buynowVC.selectedProducts = selectedProducts
        navigationController?.pushViewController(buynowVC, animated: true)
        
    }
    
    //MARK: -IBAction Remove Cart
    @IBAction func removecartAction(_ sender: Any) {
        
        guard let indexPath = self.carttableView?.indexPath(for: self) else {
            
            return
        }
        cartecommerce.remove(at: indexPath.row)
        carttableView?.reloadData()
    }
    
}
