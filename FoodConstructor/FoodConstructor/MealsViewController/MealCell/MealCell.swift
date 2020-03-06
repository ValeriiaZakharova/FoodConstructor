//
//  MealCell.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 03.03.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

protocol MealCellDelegate {
    func didTapToggle(cell: MealCell)
}

class MealCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var mealTitleLabel: UILabel!
    @IBOutlet weak var productsLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var frameView: UIView!
    
    @IBOutlet var productLabelHeightConst: NSLayoutConstraint!
    
    @IBOutlet weak var showMoreButton: UIButton!
    
    var delegate: MealCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    //MARK: - Actions
    
    @IBAction func didTapToggle(_ sender: Any) {
        delegate?.didTapToggle(cell: self)
    }
    
    func updateMealCell(mealModel: Meal, isExpanded: Bool) {
        
            mealTitleLabel.text = mealModel.title
//        var titleProduct: [String] = []
//
//        guard let products = mealModel.food else {
//            return
//        }
//
//        for product in products {
//            let name = product.name ?? "-"
//            titleProduct.append(name)
//        }
//        productsLabel.text = titleProduct.joined(separator: "\n")
        
        productsLabel.text = mealModel.products?
            .map({ (product) -> String in
                product.name ?? "-"
            })
            .joined(separator: "\n")
        
        if isExpanded {
            showMoreButton.isSelected = true
            productLabelHeightConst.isActive = false
        } else {
            showMoreButton.isSelected = false
            productLabelHeightConst.isActive = true
        }
    }
}

// MARK: - Cell Design

extension MealCell {
    
    func updateCellUI() {
        frameView.clipsToBounds = true
        frameView.layer.masksToBounds = false
        frameView.layer.shadowColor = UIColor.black.cgColor
        frameView.layer.shadowRadius = 15
        frameView.layer.cornerRadius = 15.0
        frameView.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        frameView.layer.shadowOpacity = 1.0
        frameView.backgroundColor = .white
        frameView.layer.borderWidth = 1.5
    }
}
