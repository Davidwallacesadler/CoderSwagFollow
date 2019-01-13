//
//  Category.swift
//  CoderSwag
//
//  Created by David Sadler on 1/12/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import Foundation

struct Category {
    //this private(set) makes it so I will no longer be able to set these variables to other classes - only set within the scope of the struct regardless of if it's changed elsewhere.
    
    //typically: want public vars that can be fetched but not set outside the scope of the class where they are declared.
    private(set) public var title: String!
    private(set) public var imageName: String!
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }

}
