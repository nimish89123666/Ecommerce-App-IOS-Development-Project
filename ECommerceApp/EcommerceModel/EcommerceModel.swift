//
//  EcommerceModel.swift
//  ECommerceApp
//
//  Created by Nimish Mothgare on 11/07/23.
//

import Foundation

// Structure Fashion
struct Fashion {
    
    let fashionImg : String
    let fashionclothesName : String
    let fashionclothPrice : String 
}

//Structure Mobile
struct Mobile {
    
    let mobileImg : String
    let mobileandtableName : String
    let mobilePrice : String 
}

//Structure Jewellery
struct Jewellery {
    
    let jewelleryImg : String
    let jewelleryName : String
    let jewelleryPrice : String
}

//Structure Furniture
struct Furniture {
    
    let furnitureImg : String
    let furnitureName : String
    let furniturePrice : String
}

// Structure Product Details
struct ProductDetails {
    
    let productsImgs : String
    let productsNames : String
    let productsPrices : String
    let productsDescripts : String
}

// Structure Ecommerce Cart
struct EcommerceCart {
    
    let cartproName : String
    let cartproPrice : String
    let cartproQuantity : Int
}

// Structure Ecommerce Buy Now
struct EcommerceBuyNow {
    
    let buyproNames : String
    let buyproPrices : String
    let buyproQuantites : Int
}

// Structure Ecommerce Order History
struct EcommerceOrderHistoty {
    
    let orderproNames : String
    let orderproQuantites : Int
    let orderproPrices : String
    let ordertotalPrices : String
    let ordermessageSuccess : String
}

// Structure Cart Buy Now 
struct CartBuyNow {
    
    let cartbuyNames : String
    let cartbuyPrices : String
    let cartbuyQuantites : Int
    
}
