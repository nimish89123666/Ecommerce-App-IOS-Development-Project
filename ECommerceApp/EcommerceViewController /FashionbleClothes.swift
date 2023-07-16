//
//  FashionbleClothes.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 11/07/23.
//

import UIKit

class FashionbleClothes: UIViewController,FashionCellDelegate{
    
    
    //MARK: -IBOutlet
    @IBOutlet weak var fashionSearchController: UISearchBar!
    @IBOutlet weak var fashioncollectionView: UICollectionView!
    
    //MARK: -Array Fashion Cloth
    var fashions = [Fashion]()
    var fashionfilter = [Fashion]()
    
    //MARK: -Array Fashion Products
    var productsfashionablecloth = [ProductDetails]()
    
    //MARK: -View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fashionSearchController.delegate = self
        fashionSearchController.placeholder = "Search Fashion Clothes"
        
        fashioncollectionView.delegate = self
        fashioncollectionView.dataSource = self
        fashioncollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        fashioncollectionView.register(UINib(nibName: "FashionaleClothesCustomCell", bundle: nil), forCellWithReuseIdentifier: "FashionaleClothesCustomCell")
        
        //Fashionable Array
        
        let fashion1 = Fashion(fashionImg: "PinkColourDress-420", fashionclothesName: "Pink Colour Girl T-Shirt", fashionclothPrice: "Rs 499")
        fashions.append(fashion1)
        
        let fashion2 = Fashion(fashionImg: "SmallbabyDress", fashionclothesName: "Small Baby T-Shirt", fashionclothPrice: "Rs 699")
        fashions.append(fashion2)
        
        let fashion3 = Fashion(fashionImg: "MensRed", fashionclothesName: "Mens Red T-Shirt", fashionclothPrice: "Rs 899")
        fashions.append(fashion3)
        
        let fashion4 = Fashion(fashionImg: "SmallbabyPink", fashionclothesName: "Small pink Pant", fashionclothPrice: "Rs 300")
        fashions.append(fashion4)
        
        let fashion5 = Fashion(fashionImg: "ComboPackGirls", fashionclothesName: "5 T-Shirt Combo Pack", fashionclothPrice: "Rs 500")
        fashions.append(fashion5)
        
        let fashions6 = Fashion(fashionImg: "BlueDressSmall", fashionclothesName: "Blue Small Baby Dress", fashionclothPrice: "Rs 499")
        fashions.append(fashions6)
        
        let fashion7 = Fashion(fashionImg: "GreenColourDress", fashionclothesName: "Girl Green T-Shirt", fashionclothPrice: "Rs 600")
        fashions.append(fashion7)
        
        let fashion8 = Fashion(fashionImg: "3Setshvnvnbvberfvvvv-jvv6767vb7", fashionclothesName: "3 - Sets of Men Bermuda", fashionclothPrice: "Rs 400")
        fashions.append(fashion8)
        
        //Fashionable Products Array
        
        let productc1 = ProductDetails(productsImgs: "pinkgccpovdresshvnvv", productsNames: "Pink Colour Dress - 420", productsPrices: "499", productsDescripts: "Istudio by iclothing Women Comfort and Round Neck T-Shirts is made of Cotton gives a really comfortable fit exprerience the Smooth soft and silky fabric next to your skin.")
        productsfashionablecloth.append(productc1)
        
        let productc2 = ProductDetails(productsImgs: "violethvgvgh7676jkk", productsNames: "Small Baby T-Shirt", productsPrices: "699", productsDescripts: "This T-shirt is perfect for everyday wear and can be worn to school or college as it is comfortable and stylish. This stylish shirt is made from high quality cotton for a comfortable fit. The printed design on the front makes it stylish and eye-catching.")
        productsfashionablecloth.append(productc2)
        
        let productc3 = ProductDetails(productsImgs: "redbbvn898shh", productsNames: "Mens Red T-Shirt", productsPrices: "899", productsDescripts: "This blend of Polyester Cotton fabric is comfortable to wear due to added stretch and breathable cotton yarns. Uniform Bucket Range of T-Shirts are made up of fine quality fabric and export quality stitching that will give you a Smart look with comfort while at the work. Club it with contrast trousers to give it a  perfect look.")
        productsfashionablecloth.append(productc3)
        
        let productc4 = ProductDetails(productsImgs: "bluecbcccpinkkmbm", productsNames: "Small Pink Pant", productsPrices: "300", productsDescripts: "An outfit for any flight, a Flight for any outfit. This tee is printed on classic soft cotton in multiple colours so you can complete any casual look.")
        productsfashionablecloth.append(productc4)
        
        let productc5 = ProductDetails(productsImgs: "fhgfghfghfhgf66lpp-090-7878", productsNames: "Combo Pack Girl T-Shirt", productsPrices: "500", productsDescripts: "Stay true to the history and culture of Nike Air in this French terry hoodie. Raglan sleeves and a roomy fit through the chest and body pair up with soft ribbing on the cuffs and hem for a clean, comfortable finish. The hood can be adjusted with the bungees and Nike-branded cord locks.")
        productsfashionablecloth.append(productc5)
        
        let productc6 = ProductDetails(productsImgs: "jbjfbrbbjjjoop885858", productsNames: "Blue Small Baby Dress", productsPrices: "499", productsDescripts: "Shine like your favourite all-star in this commemorative jersey. The sweat-wicking technology and breathable double-knit mesh help you stay dry and cool as you celebrate the best of the best in a look modelled after what the pros wear on the court")
        productsfashionablecloth.append(productc6)
        
        let productc7 = ProductDetails(productsImgs: "vnvvvgrexvx", productsNames: "Green Colour T-Shirt", productsPrices: "600", productsDescripts: "Like other shirts from our Match collection, this one pairs authentic design details with lightweight, quick-drying fabric to help keep the world's biggest football stars cool and comfortable on the pitch. This product is made from 100% recycled polyester fibres.")
        productsfashionablecloth.append(productc7)
        
        let productc8 = ProductDetails(productsImgs: "bermjjbv787-989-787-77676767676767bnbvv", productsNames: "3 - Sets of Men Bermuda", productsPrices: "400", productsDescripts: "Like other shirts from our Match collection, this one pairs authentic design details with lightweight, quick-drying fabric to help keep the world's biggest football stars cool and comfortable on the pitch.")
        productsfashionablecloth.append(productc8)
    }
    
}

//MARK: -UICollectionView Datasource
extension FashionbleClothes : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         
        if isSearchBarEmpty() {
            
            return self.fashions.count
        }
        else {
            return self.fashionfilter.count
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fashioncollectionView.dequeueReusableCell(withReuseIdentifier: "FashionaleClothesCustomCell", for: indexPath) as! FashionaleClothesCustomCell
        var fashionTemp : Fashion?
       if isSearchBarEmpty() {
           
           fashionTemp = self.fashions[indexPath.row]
       }
       else {
           
           fashionTemp = self.fashionfilter[indexPath.row]
       }
        cell.clothesImg.image = UIImage(named: fashionTemp?.fashionImg ?? "")
        cell.clothesName.text  = fashionTemp?.fashionclothesName
        cell.clothesPrice.text = fashionTemp?.fashionclothPrice
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedProduct = productsfashionablecloth[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductDetailsController") as! ProductDetailsController
        
                storyboard.selectedProduct = selectedProduct
                navigationController?.pushViewController(storyboard, animated: true)
    }
    
}

//MARK: -UICollectionView Delegate
extension FashionbleClothes : UICollectionViewDelegate {
    
    
}

//MARK: -UICollectionView DelegateFlowLayout
extension FashionbleClothes : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (fashioncollectionView.frame.width / 2) - 5, height: 360)

    }
}

//MARK: -UISearchBarDelegate
extension FashionbleClothes : UISearchResultsUpdating ,UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
        
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterContentForSearchText(searchText)
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        fashionfilter = []
        fashioncollectionView.reloadData()
    }
    func filterContentForSearchText(_ searchText: String) {
        
        fashionfilter = fashions.filter({ (album : Fashion) -> Bool in
            return album.fashionclothesName.lowercased().contains(searchText.lowercased())
        })
        fashioncollectionView.reloadData()
    }
    
    func isSearchBarEmpty() -> Bool {
        return fashionSearchController.text?.isEmpty ?? true
    }
    
    
        func btnacc(withData data: String) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let MobilePhonesandTablets = storyboard.instantiateViewController(withIdentifier: "MobilePhonesandTablets") as? MobilePhonesandTablets else {
                return
            }
    
            navigationController?.pushViewController(MobilePhonesandTablets, animated: true)
        }
}

