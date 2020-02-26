//
//  FoodCell.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 26.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {

    @IBOutlet weak var productNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
        
    }
    
    func updateFoodCell(product: Product) {
        
        if let productName = product.name {
            productNameLabel.text = productName
        }
    }
}
