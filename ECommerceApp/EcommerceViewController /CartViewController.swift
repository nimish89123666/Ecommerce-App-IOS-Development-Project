//
//  CartViewController.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 13/07/23.
//

import UIKit

var cartecommerce = [EcommerceCart]()

class CartViewController: UIViewController {

    //MARK: -IBOutlet
    @IBOutlet weak var carttableView: UITableView!
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carttableView.delegate = self
        carttableView.dataSource = self
        
        carttableView.register(UINib(nibName: "CartCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CartCustomTableViewCell")

    }
}

//MARK: -UITableViewDelegate
extension CartViewController : UITableViewDelegate {
    
}

//MARK: -UITableViewDataSource
extension CartViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cartecommerce.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = carttableView.dequeueReusableCell(withIdentifier: "CartCustomTableViewCell", for: indexPath) as! CartCustomTableViewCell
        cell.cartproductName.text = cartecommerce[indexPath.row].cartproName
        cell.cartproductPrice.text = cartecommerce[indexPath.row].cartproPrice
        cell.cartproductQuantity.text = String(cartecommerce[indexPath.row].cartproQuantity)
        cell.navigationController = navigationController
        return cell
    }
}


