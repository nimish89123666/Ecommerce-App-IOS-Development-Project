//
//  OrderViewController.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 14/07/23.
//

import UIKit

class OrderViewController: UIViewController {

    //MARK: -IBOutlet
    @IBOutlet weak var ordertableView: UITableView!
    
    var orderHistory = [EcommerceOrderHistoty]()

    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ordertableView.delegate = self
        ordertableView.dataSource = self
        
        ordertableView.register(UINib(nibName: "OrderHistoryCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderHistoryCustomTableViewCell")
   }

}

//MARK: -UITableViewDelegate
extension OrderViewController : UITableViewDelegate {
    
    
}

//MARK: -UITableViewDataSource
extension OrderViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderHistory.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ordertableView.dequeueReusableCell(withIdentifier: "OrderHistoryCustomTableViewCell", for: indexPath) as! OrderHistoryCustomTableViewCell
        
        let order = orderHistory[indexPath.row]
        cell.orderproName.text = order.orderproNames
        cell.orderproQuantity.text = "\(order.orderproQuantites)"
        cell.orderproPrice.text = order.orderproPrices
        cell.orderprototalPrice.text = order.ordertotalPrices
        cell.orderpromessagesuccessfull.text = order.ordermessageSuccess
        return cell
    }
    
    
    
}
