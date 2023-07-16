//
//  MobilePhonesandTablets.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 11/07/23.
//

import UIKit

class MobilePhonesandTablets: UIViewController {
    
    //MARK: -IBOutlet 
    @IBOutlet weak var mobileandtabletsSearchController: UISearchBar!
    @IBOutlet weak var mobilecollectionView: UICollectionView!
    
    //MARK: -Array Mobile & Tablets
    var mobiles = [Mobile]()
    var mobilesfiltter = [Mobile]()
    
    //MARK: -Array ProductDetails
    var productsmobile = [ProductDetails]()
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        mobileandtabletsSearchController.delegate = self
        mobileandtabletsSearchController.placeholder = "Search mobiles and tablets"
        
        mobilecollectionView.delegate = self
        mobilecollectionView.dataSource = self
        mobilecollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        mobilecollectionView.register(UINib(nibName: "MobileCustomCollectionCell", bundle: nil), forCellWithReuseIdentifier: "MobileCustomCollectionCell")
        //Mobile and Tablet Array
        
        let mobtab1 = Mobile(mobileImg: "IpadLG", mobileandtableName: "LG 120 I Pad", mobilePrice: "Rs 60,000")
        mobiles.append(mobtab1)
        
        let mobtab2 = Mobile(mobileImg: "nokia32", mobileandtableName: "Nokia 32 Model", mobilePrice: "Rs 7,000")
        mobiles.append(mobtab2)
        
        let mobtab3 = Mobile(mobileImg: "applepaad43", mobileandtableName: "Apple IPad Air 13 Pro", mobilePrice: "Rs 70,000")
        mobiles.append(mobtab3)
        
        let mobtab4 = Mobile(mobileImg: "applemobile", mobileandtableName: "Apple 14 Pro Mobile", mobilePrice: "Rs 60,000")
        mobiles.append(mobtab4)
        
        let mobtab5 = Mobile(mobileImg: "samsungpad", mobileandtableName: "Samsung IPad 13 Pro", mobilePrice: "Rs 40,000")
        mobiles.append(mobtab5)
        
        let mobtab6 = Mobile(mobileImg: "oppo57234", mobileandtableName: "OPPO A57 Mobile", mobilePrice: "Rs 20,000")
        mobiles.append(mobtab6)
        
        let mobtab7 = Mobile(mobileImg: "poco9088666666", mobileandtableName: "POCO F5 Mobile", mobilePrice: "Rs 15,000")
        mobiles.append(mobtab7)
        
        let mobtab8 = Mobile(mobileImg: "pococfbvbbmb90777", mobileandtableName: "POCo CC5 Mobile", mobilePrice: "Rs 19,000")
        mobiles.append(mobtab8)
        
        let mobtab9 = Mobile(mobileImg: "techno787878978jmnbmnb", mobileandtableName: "Techno I5GG Mobile", mobilePrice: "Rs 20,000")
        mobiles.append(mobtab9)
        
        let mobtab10 = Mobile(mobileImg: "mohhhjv67676trehbnbbb89086337777777777777777777777777-oppjjj", mobileandtableName: "Motorola 4Edge", mobilePrice: "Rs 40,000")
        mobiles.append(mobtab10)
        
        
        //Products Mobile Array
        
        let productm1 = ProductDetails(productsImgs: "LGbbbm666cbc", productsNames: "LG 120 I Pad ", productsPrices: "60,000", productsDescripts: "Multitask and watch movies on the large and bright 10.1” screen. V700 3.9 out of 5 stars. Read reviews for average rating value is 3.9 of 5. Read 27 Reviews Same page link.The tablet comes with a 10.10-inch display offering a resolution of 1200x1920 pixels at a pixel density")
        productsmobile.append(productm1)
        
        let productm2 = ProductDetails(productsImgs: "nokia789798798", productsNames: "Nokia 32 Model Mobile - 2021", productsPrices: "Rs 7,000", productsDescripts: "The less we replace our phones, the more we help the planet – and Nokia phones are built to last. They undergo product testing that is more rigorous than the industry average, and with years of Android upgrades and security updates, the software stands up to the tests of time, too.")
        productsmobile.append(productm2)
        
        let productm3 = ProductDetails(productsImgs: "apppadhjh0900808", productsNames: "Apple I Pad 13 Pro 2022 New Model", productsPrices: "70,000", productsDescripts: "The M2 chip is the next generation of Apple silicon, with an 8‑core CPU that delivers up to 15% faster performance and a 10‑core GPU that provides up to 35% faster graphics performance.1 With a 40% faster Neural Engine to accelerate machine learning tasks and 50% more memory bandwidth")
        productsmobile.append(productm3)
        
        let productm4 = ProductDetails(productsImgs: "Applemobile1238980", productsNames: "Apple 14 Pro Mobile 2022 New Model", productsPrices: "60,000", productsDescripts: "The M2 chip is the next generation of Apple silicon, with an 8‑core CPU that delivers up to 15% faster performance and a 10‑core GPU that provides up to 35% faster graphics performance.1 With a 40% faster Neural Engine to accelerate machine learning tasks and 50% more memory bandwidth")
        productsmobile.append(productm4)
        
        let productm5 = ProductDetails(productsImgs: "samsungpad3456", productsNames: "Samsung I Pad 13 Pro - 2023", productsPrices: "Rs 40,000", productsDescripts: "Samsung Galaxy Tab S7 FE 31.5 cm (12.4 inch) Large Display, S-Pen in Box, Slim Metal Body, Dolby Atmos Sound, RAM 4 GB, ROM 64 GB Expandable, Wi-Fi Tablet, Mystic Green")
        productsmobile.append(productm5)
        
        let productm6 = ProductDetails(productsImgs: "apphbhfbbmobile7797", productsNames: "OPPO A57 Mobile New Version 2021", productsPrices: "Rs 20,000", productsDescripts: "Oppo A17 (Lake Blue, 4GB RAM, 64GB Storage) with No Cost EMI/Additional Exchange Offers")
        productsmobile.append(productm6)
        
        let productm7 = ProductDetails(productsImgs: "poco7897897vvnvnbvnbv", productsNames: "POCO F5 Mobile - 2020", productsPrices: "Rs 15,000", productsDescripts: "POCO F5 Pro 5G is a high-end smartphone that packs some impressive features. The device boasts a large 6.67-inch WQHD+ Flow AMOLED display that comes with a high refresh rate of 120Hz and a touch sampling rate of 240Hz, which ensures a smooth and responsive user experience.")
        productsmobile.append(productm7)
        
        let productm8 = ProductDetails(productsImgs: "pocohjvcvimag676767", productsNames: "POCO C55 Mobile New Version 2019 Mobile", productsPrices: "Rs 19,000", productsDescripts: "The smartphone also boasts a triple rear camera setup with a 64-megapixel primary sensor, an 8-megapixel sensor with an ultra-wide lens, and a 2-megapixel sensor with a macro lens, and a 16-megapixel front camera for selfies.")
        productsmobile.append(productm8)
        
        let productm9 = ProductDetails(productsImgs: "bbjkhkjhtechnohjb9", productsNames: "Techno I5GG New version mobile 2018", productsPrices: "Rs 20,000", productsDescripts: "This should be sufficient for most users who want to take some good-quality shots. Finally, the smartphone is fueled by a massive 5,000mAh battery that should last for an entire day on a single charge.")
        productsmobile.append(productm9)
        
        let productm10 = ProductDetails(productsImgs: "moyhvhbn877773mnbhhpoq123", productsNames: "Motorola 4 Edge", productsPrices: "40,000", productsDescripts: "Motorola Edge smartphones have adopted slim profiles and narrow designs over their past few iterations. The Motorola Edge 40 takes up on this and refines it further with a vegan leather back which is premium to the touch. Very few phones will be able to offer the kind of look being pulled off by the Edge 40 and it decidedly makes the device appear more expensive than it actually is. Also as mentioned above, the phone has an IP68 rating making it highly durable against water and dust.")
        productsmobile.append(productm10)
    }
    

}

//MARK: -UICollectionView Delegate
extension MobilePhonesandTablets : UICollectionViewDelegate {
    
    
    
}

//MARK: -UICollectionView DataSource
extension MobilePhonesandTablets : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if isSearchBarEmpty() {
            
            return self.mobiles.count
        }
        else {
            return self.mobilesfiltter.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mobilecollectionView.dequeueReusableCell(withReuseIdentifier: "MobileCustomCollectionCell", for: indexPath) as! MobileCustomCollectionCell
        var mobileTemp : Mobile?
        if isSearchBarEmpty() {
            
            mobileTemp = self.mobiles[indexPath.row]
        }
        else {
            
            mobileTemp = self.mobilesfiltter[indexPath.row]
        }
        cell.mobiletabletImg.image = UIImage(named: mobileTemp?.mobileImg ?? "")
        cell.mobiletabletsName.text  = mobileTemp?.mobileandtableName
        cell.mobiletabletsPrice.text = mobileTemp?.mobilePrice
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        let selectedProduct = productsmobile[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductDetailsController") as! ProductDetailsController
        
                storyboard.selectedProduct = selectedProduct
                navigationController?.pushViewController(storyboard, animated: true)
        }
        
       
    }
        
    
    


//MARK: -UICollectionView DelegateFlowLayout 
extension MobilePhonesandTablets : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (mobilecollectionView.frame.width / 2) - 5, height: 360)

    }
}

//MARK: -UISearchBarDelegate 
extension MobilePhonesandTablets : UISearchResultsUpdating, UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)

    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterContentForSearchText(searchText)

    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        mobilesfiltter = []
        mobilecollectionView.reloadData()
    }
    func filterContentForSearchText(_ searchText: String) {
        
        mobilesfiltter = mobiles.filter({ (album : Mobile) -> Bool in
            return album.mobileandtableName.lowercased().contains(searchText.lowercased()) 
            })
        mobilecollectionView.reloadData()
    }
    func isSearchBarEmpty() -> Bool {
        return mobileandtabletsSearchController.text?.isEmpty ?? true
    }
    
    
    
}


