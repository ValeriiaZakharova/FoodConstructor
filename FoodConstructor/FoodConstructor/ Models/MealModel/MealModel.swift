//
//  MealModel.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 25.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import Foundation

struct Meal {
    var name: String?
    var food: [Product]?
    
}


struct DayMealPlan {
    
    var name: String?
    var meals: [Meal]?
    
}

struct WeekMealPlan {
    
    var name: String?
    var days: [DayMealPlan]?
    
}
