//
//  FashionableJewellery.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 12/07/23.
//

import UIKit

class FashionableJewellery: UIViewController {
    //MARK: -IBOutlets
    @IBOutlet weak var jewellerysearchController: UISearchBar!
    @IBOutlet weak var jewelleryCollectionView: UICollectionView!
    
    //MARK: -Fashionable Jewellery Array
    var jewellery = [Jewellery]()
    var jewelleryfiltter = [Jewellery]()
    
    //MARK: -Array Product Details
    var productsjewellery = [ProductDetails]()
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
     
        jewellerysearchController.delegate = self
        jewellerysearchController.placeholder = "Search jewellery"
        
        jewelleryCollectionView.delegate = self
        jewelleryCollectionView.dataSource = self
        jewelleryCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        jewelleryCollectionView.register(UINib(nibName: "JewelleryCustomCell", bundle: nil), forCellWithReuseIdentifier: "JewelleryCustomCell")
        
        
        //Jewellery Array
        let jewellery1 = Jewellery(jewelleryImg: "golden898908", jewelleryName: "Golden Jewellery Sets", jewelleryPrice: "Rs 40,000")
        jewellery.append(jewellery1)
        
        let jewellery2 = Jewellery(jewelleryImg: "ring98989", jewelleryName: "Golden Ring", jewelleryPrice: "Rs 30,000")
        jewellery.append(jewellery2)
        
        let jewellery3 = Jewellery(jewelleryImg: "bbbmbmb9908", jewelleryName: "Golden Earings", jewelleryPrice: "Rs 12,000")
        jewellery.append(jewellery3)
        
        let jewellery4 = Jewellery(jewelleryImg: "ringhjkh9978", jewelleryName: "Golden ring", jewelleryPrice: "Rs 12,000")
        jewellery.append(jewellery4)
        
        let jewellery5 = Jewellery(jewelleryImg: "goldring099", jewelleryName: "Nakshatra ring", jewelleryPrice: "Rs 15,000")
        jewellery.append(jewellery5)
        
        let jewellery6 = Jewellery(jewelleryImg: "necklace78787", jewelleryName: "Fashionable Necklace", jewelleryPrice: "40,000")
        jewellery.append(jewellery6)
        
        let jewellery7 = Jewellery(jewelleryImg: "goldensets798798787", jewelleryName: "Khandelawl Necklace", jewelleryPrice: "Rs 70,000")
        jewellery.append(jewellery7)
        
        let jewellery8 = Jewellery(jewelleryImg: "jewellery-gold-gold-jewelry-luxury", jewelleryName: "Golden Bangels", jewelleryPrice: "Rs 80,000")
        jewellery.append(jewellery8)
        
        let jewellery9 = Jewellery(jewelleryImg: "uncut-diamond-jewellery-emeralds-diamonds-jewellery", jewelleryName: "Diamond Necklace", jewelleryPrice: "Rs 60,000")
        jewellery.append(jewellery9)
        
        let jewellery10 = Jewellery(jewelleryImg: "stonehbhbnecjkjkjhjh787878", jewelleryName: "Stone Necklace", jewelleryPrice: "90,000")
        jewellery.append(jewellery10)
        
        
        //Jewellery Product Details Array
        
        let productj1 = ProductDetails(productsImgs: "goldensetsmnbmn90684383878", productsNames: "Golden Jewellery Sets", productsPrices: "40,000", productsDescripts: "Festive season makes this piece a perfect go to ornament as a necessity and as a stand-out jewellery piece. Good for regular wear as well as special occasions!")
        productsjewellery.append(productj1)
        
        let productj2 = ProductDetails(productsImgs: "ring8989hgfvn", productsNames: "Golden Ring", productsPrices: "30,000", productsDescripts: "This ring can be styled with any outfit you chose to don! Versatile yet magnificent, it is sure to grab attention! It's best to balance out rings evenly throughout your hands so that you're not wearing too many rings all at once.")
        productsjewellery.append(productj2)
        
        let productj3 = ProductDetails(productsImgs: "earingbdbbb8884gb4bbbbbbbb", productsNames: "Golden Earings", productsPrices: "12,000", productsDescripts: "Style this with the perfect wedding ceremony dress, or an ethnic piece which is specially made for big occasions!.This is a gorgeous hoop styled earrings, which are a dreamy statement accessory.")
        productsjewellery.append(productj3)
        
        let productj4  = ProductDetails(productsImgs: "ring99012", productsNames: "Golden Ring", productsPrices: "12,000", productsDescripts: "The pair has a magnificent detailing of kundan and pearls. The added dash of colors in this piece makes it for an eye catching statement accessory")
        productsjewellery.append(productj4)
        
        let productj5 = ProductDetails(productsImgs: "ring8989bbnbnvb", productsNames: "Golden Ring", productsPrices: "12,000", productsDescripts: "Fulfill your desire to style the most classic and pure form of ethnic jewellery with these Gold Plated rustic looking pair of earrings that have the impression of Godliness all over it!")
        productsjewellery.append(productj5)
        
        let productj6 = ProductDetails(productsImgs: "necklacebbn32309bb33", productsNames: "Fashionable Necklace", productsPrices: "70,000", productsDescripts: "Festive season makes this piece a perfect go to ornament as a necessity and as a stand-out jewellery piece. Good for regular wear as well as special occasions!")
        productsjewellery.append(productj6)
        
        let productj7 = ProductDetails(productsImgs: "diamondhbhb787", productsNames: "Khandelwal Necklace", productsPrices: "70,000", productsDescripts: "This auspicious thread is nothing like an ordinary one! Ready to wear and an attention grabber for sure, this is a unique design with American Diamonds studded in it to make it look like a fashion piece with the traditional elements!")
        productsjewellery.append(productj7)
        
        let productj8 = ProductDetails(productsImgs: "bangelsbnmb333", productsNames: "Golden Bangels", productsPrices: "80,000", productsDescripts: "Sparkling elegance meets affordability with these exquisite American diamond earrings. Crafted with precision and adorned with dazzling simulated diamonds, these earrings effortlessly elevate any ensemble.")
        productsjewellery.append(productj8)
        
        let productj9 = ProductDetails(productsImgs: "goldensenjm344", productsNames: "Diamond Necklace", productsPrices: "60,000", productsDescripts: "This auspicious thread is nothing like an ordinary one! Ready to wear and an attention grabber for sure, this is a unique design with American Diamonds studded in it to make it look like a fashion piece with the traditional elements!")
        productsjewellery.append(productj9)
        
        let productj10 = ProductDetails(productsImgs: "stonbb565608hv-ttytvvbnbnbnbnbnbnbnb", productsNames: "Stone Necklace", productsPrices: "90,000", productsDescripts: "A beautiful set of Golden Necklaces to enhance the ever-so-beautiful bride on her special occasion or for you to attend a very special Wedding/Party. Made with high-quality alloy and neatly decorated with pearls and colorful stones.")
        productsjewellery.append(productj10)
        
    }
    
}

//MARK: -UICollectionViewDelegate
extension FashionableJewellery : UICollectionViewDelegate {
    
}

//MARK: -UICollectionViewDataSource
extension FashionableJewellery : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if isSearchBarEmpty() {
            
            return self.jewellery.count
        }
        else {
            return self.jewelleryfiltter.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = jewelleryCollectionView.dequeueReusableCell(withReuseIdentifier: "JewelleryCustomCell", for: indexPath) as! JewelleryCustomCell
        var jewellewryTemp : Jewellery?
        if isSearchBarEmpty() {
            
            jewellewryTemp = self.jewellery[indexPath.row]
        }
        else {
            
            jewellewryTemp = self.jewelleryfiltter[indexPath.row]
        }
        cell.jewelleryImg.image = UIImage(named: jewellewryTemp?.jewelleryImg ?? "")
        cell.jewelleryName.text  = jewellewryTemp?.jewelleryName
        cell.jewelleryPrice.text = jewellewryTemp?.jewelleryPrice
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedProduct = productsjewellery[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductDetailsController") as! ProductDetailsController
        
       storyboard.selectedProduct = selectedProduct
       navigationController?.pushViewController(storyboard, animated: true)
        
    }
    
    
}

//MARK: -UICollectionViewDelegateFlowLayout
extension FashionableJewellery : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (jewelleryCollectionView.frame.width / 2) - 5, height: 360)

    }
}

//MARK: -UISearchBarDelegate 
extension FashionableJewellery : UISearchResultsUpdating, UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)

    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterContentForSearchText(searchText)

    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
       jewelleryfiltter = []
        jewelleryCollectionView.reloadData()
    }
    func filterContentForSearchText(_ searchText: String) {
        
        jewelleryfiltter = jewellery.filter({ (album : Jewellery) -> Bool in
            return album.jewelleryName.lowercased().contains(searchText.lowercased()) 
            })
        jewelleryCollectionView.reloadData()
    }
    func isSearchBarEmpty() -> Bool {
        return jewellerysearchController.text?.isEmpty ?? true
    }
    
    
    
}
