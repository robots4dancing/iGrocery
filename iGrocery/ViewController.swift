//
//  ViewController.swift
//  iGrocery
//
//  Created by ANI on 1/17/17.
//  Copyright © 2017 sempie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var groceryArray = [GroceryItem]()
    
    //MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        groceryArray = fillArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Temp Methods
    
    func fillArray() -> [GroceryItem]{
        let item1 = GroceryItem(itemName: "Milk", imgName: "Milk", qty: 1)
        let item2 = GroceryItem(itemName: "Bread", imgName: "Bread", qty: 2)
        let item3 = GroceryItem(itemName: "Eggs", imgName: "Eggs", qty: 12)
        return [item1, item2, item3]
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let currentGroceryItem = groceryArray[indexPath.row]
        cell.textLabel!.text = currentGroceryItem.itemName
        return cell
    }
}

