//
//  FoodTypeModel.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 25.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import Foundation

struct Product {
    var name: String?
    var calorieСontent: Double?
    var weight: Double?
    var fat: Double?
    var protein: Double?
    var carbs: Double?
    var category: ProductCategory?
}

enum ProductCategory {
    
    case meat
    case vegetables
    case fruit
    case groats
    case fish
    case flour
    case seaFood
    case cheese
    case eggs
    case milk
    case dairyProducts
    case mushroom
    case nuts
    case fatOil
    case juice
    case other
    case none

}

