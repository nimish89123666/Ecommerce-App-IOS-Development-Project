//
//  FurnitureViewController.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 12/07/23.
//

import UIKit

class FurnitureViewController: UIViewController {

    //MARK: -IBOutlet
    @IBOutlet weak var furnitureSearchController: UISearchBar!
    @IBOutlet weak var furnitureCollectionView: UICollectionView!
    
    //MARK: -Furniture Array
    var furniture = [Furniture]()
    var furniturefiltter = [Furniture]()
    
    var productsfurniture = [ProductDetails]()
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        furnitureSearchController.delegate = self
        furnitureSearchController.placeholder = "Search furniture"
        
        furnitureCollectionView.delegate = self
        furnitureCollectionView.dataSource = self
        furnitureCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        
        furnitureCollectionView.register(UINib(nibName: "FurnitureCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FurnitureCustomCollectionViewCell")
        
        //Furniture Array
        
        let furniture1 = Furniture(furnitureImg: "Chair098", furnitureName: "Grey Chair", furniturePrice: "Rs 10,000")
        furniture.append(furniture1)
        
        let furniture2 = Furniture(furnitureImg: "Dinning-Table420", furnitureName: "Wooden Dinning Table", furniturePrice: "Rs 20,000")
        furniture.append(furniture2)
        
        let furniture3 = Furniture(furnitureImg: "Dinning67", furnitureName: "Wooden Dinning Table with Chair", furniturePrice: "Rs 30,000")
        furniture.append(furniture3)
        
        let furniture4 = Furniture(furnitureImg: "GrayColourChair", furnitureName: "Grey Colour Chair", furniturePrice: "Rs 6,000")
        furniture.append(furniture4)
        
        let furniture5 = Furniture(furnitureImg: "GreenSofa", furnitureName: "Green Colour Sofa", furniturePrice: "Rs 30,000")
        furniture.append(furniture5)
        
        let furniture6 = Furniture(furnitureImg: "SofaPink", furnitureName: "Sofa Colour Pink", furniturePrice: "Rs 60,000")
        furniture.append(furniture6)
        
        let furniture7 = Furniture(furnitureImg: "StudyTable-900", furnitureName: "Wooden Study Table", furniturePrice: "Rs 8,000")
        furniture.append(furniture7)
        
        let furniture8 = Furniture(furnitureImg: "grehvv786mn-vvvtrfc", furnitureName: "Grey Colour Cushion Sofa", furniturePrice: "Rs 40,000")
        furniture.append(furniture8)
        
        let furniture9 = Furniture(furnitureImg: "WoodenChair-87", furnitureName: "Wooden Chair", furniturePrice: "Rs 15,000")
        furniture.append(furniture9)
        
        let furniture10 = Furniture(furnitureImg: "studybbmnbmnb87878potyvbnv", furnitureName: "Study Table with Chair", furniturePrice: "Rs 32,000")
        furniture.append(furniture10)
        
        //Products Furniture Array
        
        let productf1 = ProductDetails(productsImgs: "chjkdbhbdh7666-90-90-90", productsNames: "Grey Chair", productsPrices: "10,000", productsDescripts: "High Living Exclusive Black Leatherette High Back Office Chair is a premium quality product. The seat height can be adjusted as per convenience. This product has a dimension of 21.8x21.8x39.37 inches ( LxBxH). All High Living Exclusive Black Leatherette High Back Office Chair is manufactured with precision")
        productsfurniture.append(productf1)
        
        let productf2 = ProductDetails(productsImgs: "dinggggggg6366-90", productsNames: "Dinning-Table420", productsPrices: "20,000", productsDescripts: "A good quality chair and a firm desk are all one can ask for. The furniture is designed and manufactured to provide years of dependable service under normal circumstances and use. Its simple and robust construction lend it an evergreen and majestic look.")
        productsfurniture.append(productf2)
        
        let productf3 = ProductDetails(productsImgs: "dinhggvv653555", productsNames: "Wooden Dinning Table with chair", productsPrices: "30,000", productsDescripts: "The Royaloak Baleno Wooden Dining Set 4 Seater is a compact and space-saving dining set that is perfect for small dining areas or apartments. The set includes a designer dining table and four chairs, designed with a modern and stylish look. Made from solid wood, this dining set is built to last and provides a sturdy and stable surface for dining.")
        productsfurniture.append(productf3)
        
        let productf4 = ProductDetails(productsImgs: "greybbb663", productsNames: "Grey Colour Chair", productsPrices: "6,000", productsDescripts: "The chairs are designed with high backrests that provide additional comfort and support while sitting. The backrests are also designed with a modern and sleek look that adds to the overall style of the dining set. The cushioned seats provide a soft and comfortable seating experience, making it ideal for long dinners or entertaining guests.")
        productsfurniture.append(productf4)
        
        let productf5 = ProductDetails(productsImgs: "grevn676-90", productsNames: "Green Sofa", productsPrices: "30,000", productsDescripts: "Royaloak Falcon Computer chair made with Leatherette, which makes long hours at your desk comfortable. Revolving Mechanism helps to easily rotate and adjust the height to the comfortable position and the high-grade nylon base and nylon castors make it easy to move around your space.")
        productsfurniture.append(productf5)
        
        let productf6 = ProductDetails(productsImgs: "pi977733ew", productsNames: "Sofa Pink", productsPrices: "60,000", productsDescripts: "Royaloak Penang Malaysia Wooden 6 Seater Dining Table set is elegantly Styled and made, this Dining table set makes for a great addition to your home. A dining table set for those who do not want to compromise on comfort, budget or style. The set has an Modern and contemporary look that helps you set up a stylish dining space in your home.")
        productsfurniture.append(productf6)
        
        let productf7 = ProductDetails(productsImgs: "studyug09", productsNames: "Study Table - 900", productsPrices: "8,000", productsDescripts: "Royaloak Eden Outdoor Set is a classic and elegant addition to your garden decor. You'll be able to enjoy beautiful summer days with your friends and family, sipping on lemonade or coffee while sitting at the lovely table. Made of rust-proof textured steel with Leatherette & Foam Cushion, this set includes two chairs and one table, perfect for enjoying breakfast or snacks in your backyard for years to come.")
        productsfurniture.append(productf7)
        
        let productf8 = ProductDetails(productsImgs: "gresofhv676", productsNames: "Grey Colour Cushion Sofa", productsPrices: "40,000", productsDescripts: "Enjoy the cozy and inviting ambiance that this contemporary piece brings into your living room! The L-shaped sectional offers plenty of seats for everyone to stretch out while the pillow back cushions that offer excellent lumbar support.")
        productsfurniture.append(productf8)
        
        let productf9 = ProductDetails(productsImgs: "wovvchebb878-cggghfvg-7t7vv", productsNames: "Wooden Chair - 87", productsPrices: "15,000", productsDescripts: "Royaloak Octane Office Chair is a high back with adjustable headrest and high-grade nylon mesh back, comes with adjustable lumbar support to support your lower back during long working hours, it has an adjustable armrest and high-grade nylon base with casters, the seat is made of PU foam upholstered with fabric. it has a single lever to lock the backrest and to adjust seat height.")
        productsfurniture.append(productf9)
        
        let productf10 = ProductDetails(productsImgs: "dsbbb7676", productsNames: "Study Table with Chair", productsPrices: "32,000", productsDescripts: "The Royaloak Latina Italian Office Chair with Revolving Base is a stylish and comfortable chair that is perfect for anyone who spends long hours at their desk. The soft mesh foam cushion provides excellent support and breathability, while the adjustable headrest and lumbar support can be customized to your individual needs.")
        productsfurniture.append(productf10)
    }

}

//MARK: -UICollectionViewDelegate
extension FurnitureViewController : UICollectionViewDelegate {
    
}

//MARK: -UICollectionViewDataSource
extension FurnitureViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if isSearchBarEmpty() {
            
            return self.furniture.count
        }
        else {
            
            return self.furniturefiltter.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = furnitureCollectionView.dequeueReusableCell(withReuseIdentifier: "FurnitureCustomCollectionViewCell", for: indexPath) as! FurnitureCustomCollectionViewCell
        var furnitureTemp : Furniture?
        if isSearchBarEmpty() {
            
            furnitureTemp = self.furniture[indexPath.row]
        }
        else {
            
            furnitureTemp = self.furniturefiltter[indexPath.row]
        }
        cell.furnitureImg.image = UIImage(named: furnitureTemp?.furnitureImg ?? "")
        cell.furnitureName.text  = furnitureTemp?.furnitureName
        cell.furniturePrice.text = furnitureTemp?.furniturePrice
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedProduct = productsfurniture[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductDetailsController") as! ProductDetailsController
        
                storyboard.selectedProduct = selectedProduct
                navigationController?.pushViewController(storyboard, animated: true)

    }
}

//MARK: -UICollectionViewDelegateFlowLayout
extension FurnitureViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (furnitureCollectionView.frame.width / 2) - 5, height: 360)

    }
    
}

//MARK: -UISearchBarDelegate
extension FurnitureViewController : UISearchResultsUpdating , UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)

    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterContentForSearchText(searchText)

    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        furniturefiltter = []
        furnitureCollectionView.reloadData()
    }
    func filterContentForSearchText(_ searchText: String) {
        
        furniturefiltter = furniture.filter({ (album : Furniture) -> Bool in
            return album.furnitureName.lowercased().contains(searchText.lowercased())
            })
        furnitureCollectionView.reloadData()
    }
    func isSearchBarEmpty() -> Bool {
        return furnitureSearchController.text?.isEmpty ?? true
    }
    
    
}
