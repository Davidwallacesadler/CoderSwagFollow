//
//  DataService.swift
//  CoderSwag
//
//  Created by David Sadler on 1/13/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import Foundation

class DataService {
    
    //we have created a singleton here.
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
    
    //Simulate retreiving category data from some kind of dataservice - in a real case secenario - we would probably want a competion handler to run this process on a background thread.
    func getCatagories() -> [Category] {
        return categories
    }
}
