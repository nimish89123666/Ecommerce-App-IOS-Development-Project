//
//  BuyNowViewController.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 14/07/23.
//

import UIKit

class BuyNowViewController: UIViewController {
    
    //MARK: -IBOutlet
    @IBOutlet weak var buyproName: UILabel!
    @IBOutlet weak var buyproQuantity: UILabel!
    @IBOutlet weak var buyproPrice: UILabel!
    @IBOutlet weak var buyprototalPrice: UILabel!
    @IBOutlet weak var messageSuccess: UILabel!
    @IBOutlet weak var vieworderhistoryBtn: UIButton!
    
    //MARK: -Variable 
    var selectedProduct : EcommerceBuyNow?
    var selectedProducts : CartBuyNow?
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartProduct()
        if let product = selectedProduct {
            
            buyproName?.text = product.buyproNames
            buyproQuantity?.text = "\(product.buyproQuantites)"
            buyproPrice?.text = product.buyproPrices
             if let price = Int(product.buyproPrices) {
                        let totalPrice = price * Int(product.buyproQuantites)
                        buyprototalPrice?.text = "\(totalPrice)"
                    } else {
                        buyprototalPrice?.text = "N/A"
                    }
            messageSuccess?.text = "Product successfully Purchased"
            
            
      }
        
        func cartProduct() {
            
            if let product = selectedProducts {
                
                buyproName?.text = product.cartbuyNames
                buyproQuantity?.text = "\(product.cartbuyQuantites)"
                buyproPrice?.text = product.cartbuyPrices
                
                if let price = Int(product.cartbuyPrices) {
                    let totalPrice = price * product.cartbuyQuantites
                    buyprototalPrice?.text = "\(totalPrice)"
                } else {
                    
                    buyprototalPrice.text = "N/A"
                }
                
                messageSuccess?.text = "Product successfully Purchased"
            }
        }
        
    }
    
    //MARK: -IBAction View Order History 
    @IBAction func vieworderhistoryAction(_ sender: Any) {
        
        
        guard let product = selectedProduct else {
                return
            }

            let orderHistory = EcommerceOrderHistoty(
                orderproNames: product.buyproNames,
                orderproQuantites: product.buyproQuantites,
                orderproPrices: product.buyproPrices,
                ordertotalPrices: "\(Double(product.buyproQuantites) * (Double(product.buyproPrices)!))",
                ordermessageSuccess: "Product successfully Purchased"
            )

            if let orderVC = storyboard?.instantiateViewController(withIdentifier: "OrderViewController") as? OrderViewController {
                orderVC.orderHistory.append(orderHistory)
                navigationController?.pushViewController(orderVC, animated: true)
            }
        }
    
}

