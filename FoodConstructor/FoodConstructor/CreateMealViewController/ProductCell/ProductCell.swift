//
//  ProductCell.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 03.03.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var proteinLabel: UILabel!
    @IBOutlet weak var carbohydratesLabel: UILabel!
    @IBOutlet weak var fatLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateProductCell(product: Product) {
        if let name = product.name {
            productNameLabel.text = name
        }
        if let calories = product.calorieСontent {
            caloriesLabel.text = String(calories)
        }
        if let fat = product.fat {
            fatLabel.text = String(fat)
        }
        if let carbs = product.carbs {
            carbohydratesLabel.text = String(carbs)
        }
        if let protein = product.protein {
            proteinLabel.text = String(protein)
        }
        categoryLabel.text = product.category.map { $0.rawValue } //ask dima about this
    }

}
