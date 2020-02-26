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
    var carbs: Double??
}


struct CategoryProduct {
    
    var name: String?
    var products: [Product]?
    
}
