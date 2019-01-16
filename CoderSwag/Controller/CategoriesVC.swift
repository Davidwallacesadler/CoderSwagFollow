//
//  ViewController.swift
//  CoderSwag
//
//  Created by David Sadler on 1/12/19.
//  Copyright © 2019 David Sadler. All rights reserved.
//

import UIKit

//To feed our TableView with data we will need to implement some delegates/protocols.
//Our TableView:
//1) Needs to know where the data source is
//2) Needs to how cells are dequeued when off screen (reuse identifiers)
//3) Needs to know how many cells there will be in the table
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCatagories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCatagories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    

}

