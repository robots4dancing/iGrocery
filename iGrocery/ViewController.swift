//
//  ViewController.swift
//  iGrocery
//
//  Created by ANI on 1/17/17.
//  Copyright © 2017 sempie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let groceryArray = ["Milk", "Bread", "Eggs"]
    
    //MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let currentGroceryItem = groceryArray[indexPath.row]
        cell.textLabel!.text = currentGroceryItem
        return cell
    }
}

