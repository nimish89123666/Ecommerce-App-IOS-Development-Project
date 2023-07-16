//
//  ViewController.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 11/07/23.
//

import UIKit

class ViewController: UIViewController {
   
    //MARK: -IBOutlet
    @IBOutlet weak var fashionclothesBtn: UIButton!
    @IBOutlet weak var mobilephonesBtn: UIButton!
    @IBOutlet weak var jewelleryBtn: UIButton!
    @IBOutlet weak var furnitureBtn: UIButton!
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: -IBAction Fashion Clothes
    @IBAction func fashionclothesAction(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "FashionbleClothes") as! FashionbleClothes
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: -IBAction Mobile Phones & Tablets
    @IBAction func mobilephonesAction(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "MobilePhonesandTablets") as! MobilePhonesandTablets
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: -IBAction Fashionable Jewellery
    @IBAction func jewelleryAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FashionableJewellery") as! FashionableJewellery
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    //MARK: -IBAction Furniture Action
    @IBAction func furnitureAction(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "FurnitureViewController") as! FurnitureViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}

