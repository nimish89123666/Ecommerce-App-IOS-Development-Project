//
//  ProductDetailsController.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 12/07/23.
//

import UIKit


class ProductDetailsController: UIViewController {

    //MARK: -IBOutlet
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productChoose: UIStepper!
    @IBOutlet weak var productchooseLbl: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var cartBtn: UIButton!
    
    //MARK: -Variable
    var selectedProduct: ProductDetails?

    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productChoose.autorepeat = true
        productChoose.isContinuous = true
        
        productChoose.maximumValue = 20
        productChoose.minimumValue = 0
        productchooseLbl.text = productChoose.value.description
        
        
        if let product = selectedProduct {
            
            productImg?.image = UIImage(named: product.productsImgs)
            productName?.text = product.productsNames
            productPrice?.text = product.productsPrices
            productDescription?.text = product.productsDescripts
        }

    }
    
    
    //MARK: - IBAction Product Quantity Choose
    @IBAction func quantityStepperAction(_ sender: UIStepper) {
        
        productchooseLbl.text = Int(sender.value).description
    }
    
    //MARK: -IBAction Buy Now
    @IBAction func buynowAction(_ sender: Any) {
       
        let proNames = selectedProduct?.productsNames ?? ""
        let proPrices = selectedProduct?.productsPrices ?? ""
        let proQuantites = Int(productchooseLbl.text!) ?? 0
        
        let buyNowItem = EcommerceBuyNow(buyproNames: proNames, buyproPrices: proPrices, buyproQuantites: proQuantites)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let buynowVC = storyboard.instantiateViewController(withIdentifier: "BuyNowViewController") as! BuyNowViewController
        buynowVC.selectedProduct = buyNowItem
        navigationController?.pushViewController(buynowVC, animated: true)
        
    }
    
    //MARK: -IBAction Add to Cart
    @IBAction func addtocartAction(_ sender: Any) {
        
        //Add product to cart
        let proName = selectedProduct?.productsNames ?? ""
        let proPrice = selectedProduct?.productsPrices ?? ""
        let proQuantity = Int(productchooseLbl.text!) ?? 0
        
        let ecomCart = EcommerceCart(cartproName: proName, cartproPrice: proPrice, cartproQuantity: proQuantity)
        print(ecomCart)
        cartecommerce.append(ecomCart)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

