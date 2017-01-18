//
//  DetailViewController.swift
//  iGrocery
//
//  Created by ANI on 1/17/17.
//  Copyright © 2017 sempie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var currentGroceryItem :GroceryItem?
    
    @IBOutlet var nameLabel :UILabel!
    
    //MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let groceryItem = currentGroceryItem else {
            self.navigationController!.popViewController(animated: true)
            return
        }
        nameLabel.text = groceryItem.itemName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
}
