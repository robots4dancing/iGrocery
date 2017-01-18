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
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        let currentGroceryItem = groceryArray[indexPath.row]
//        cell.textLabel!.text = currentGroceryItem.itemName
//        cell.textLabel!.font = UIFont(name: "Helvetica-Bold", size: 36.0)
//        cell.detailTextLabel!.text = currentGroceryItem.formattedQty
//        cell.detailTextLabel!.font = UIFont(name: "Helvetica-Oblique", size: 8.0)
//        cell.textLabel!.textColor = .green
//        cell.imageView!.image = UIImage(named: currentGroceryItem.imgName)
//        return cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryCell", for: indexPath) as! GroceryTableViewCell
        let currentGroceryItem = groceryArray[indexPath.row]
        cell.nameLabel.text = currentGroceryItem.itemName
        cell.qtyLabel.text = currentGroceryItem.formattedQty
        cell.itemImgView.image = UIImage(named: currentGroceryItem.imgName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}

