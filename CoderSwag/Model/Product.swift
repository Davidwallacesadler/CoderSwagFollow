//
//  Product.swift
//  CoderSwag
//
//  Created by David Sadler on 1/16/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import Foundation

//always use a struct unless we need a class
struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
