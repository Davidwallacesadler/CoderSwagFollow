//
//  DataService.swift
//  CoderSwag
//
//  Created by David Sadler on 1/13/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import Foundation

class DataService {
    
    //we have created a singleton here (Static)
    //static keyword: only one copy in memory of this constant.
    //if your app is running low on memory check and see if there are too many singletons taking up points in memory.
    static let instance = DataService()
    
    //categories is an array of type Category (type inference)
    //we made the categories array private - dont want anyone accessing this data directly
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    // MARK - PRODUCT DATA
    
    //This is what will populate our collection view of products
    //This data would typically be downloaded from a server but in this case we will hard code in the data.

    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
         Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
          Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt04.png")
    ]
    
    //when our collection view is feeding off this data it is going to need an empty array to start off with, so its not nil.
    private let digitalGoods = [Product]()
    
    
    //Simulate retreiving category data from some kind of dataservice - in a real case secenario - we would probably want a competion handler to run this process on a background thread.
    func getCatagories() -> [Category] {
        return categories
    }
    
    func getProducts(forCatagoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    

    
}
