//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by David Sadler on 1/12/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import UIKit

//views should manage themselves - thats why we define these here rather than in the tableview delagates in the VC
class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
