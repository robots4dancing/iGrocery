//
//  GroceryItem.swift
//  iGrocery
//
//  Created by ANI on 1/17/17.
//  Copyright © 2017 sempie. All rights reserved.
//

import UIKit

class GroceryItem: NSObject {
    
    var itemName :String!
    var imgName  :String!
    var qty      :Int = 0
    
    var formattedQty :String {
        return "Quantity: \(qty)"
    }
    
    init(itemName: String, imgName: String, qty: Int) {
        self.itemName = itemName
        self.imgName = imgName
        self.qty = qty
    }

}
