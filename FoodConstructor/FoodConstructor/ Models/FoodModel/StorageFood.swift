//
//  Storage.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 25.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import Foundation

struct StorageFood {
    
    func createProductCategories() -> [CategoryProduct] {
        
        let meatCategory = creatMeatCategory()
        let vegetablesCategory = createVegetablesCategory()
        let fruitCategory = createFruitCategory()
        let groatsCategory = createGroatsCategory()
        let fishCategory = createFishCategory()
        let flourCategory = createFlourCategory()
        let seaFoodCategory = createSeaFoodCategory()
        let cheeseCategory = createCheeseCategory()
        let eggsCategory = createEggsCategory()
        let milkCategory = createMilkCategory()
        let milkProductCategory = createMilkProductsCategory()
        let mashroomCategory = createMashroomsCategory()
        let nutsCategory = createNutsCategory()
        let fatOilCategory = createFatOilCategory()
        let juiceFrashCategory = createJuiceCategory()
        let otherCategory = createOtherCategory()
        
        return [meatCategory, vegetablesCategory, fruitCategory, groatsCategory, fishCategory, flourCategory, seaFoodCategory, cheeseCategory, eggsCategory, milkCategory, milkProductCategory, mashroomCategory, nutsCategory, fatOilCategory, juiceFrashCategory, otherCategory]
    }
    
    func creatMeatCategory() -> CategoryProduct {
        
        var beef = Product()
        beef.name = "Beef"
        beef.weight = 100
        beef.calorieСontent = 250
        beef.protein = 26.0
        beef.carbs = 0.0
        beef.fat = 15.0
        
        var pork = Product()
        pork.name = "Pork"
        pork.weight = 100
        pork.calorieСontent = 242
        pork.carbs = 0.8
        pork.fat = 7
        pork.protein = 19
        
        var veal = Product()
        veal.name = "Veal"
        veal.weight = 100
        veal.calorieСontent = 172
        veal.carbs = 0.0
        veal.fat = 7.0
        veal.protein = 24.0
        
        var chicken = Product()
        chicken.name = "Veal"
        chicken.weight = 100
        chicken.calorieСontent = 239
        chicken.carbs = 0.0
        chicken.fat = 14.0
        chicken.protein = 27.0
        
        let meatCategory = CategoryProduct(name: "Meat", products: [beef, pork, veal, chicken])
        
        return meatCategory
    }
    
    func createVegetablesCategory() -> CategoryProduct {
        
        var cucumber = Product()
        cucumber.name = "Cucumber"
        cucumber.weight = 100
        cucumber.calorieСontent = 15
        cucumber.carbs = 2.8
        cucumber.fat = 0.1
        cucumber.protein = 0.8
        
        var tomato = Product()
        tomato.name = "Tomato"
        tomato.weight = 100
        tomato.calorieСontent = 20
        tomato.carbs = 3.7
        tomato.fat = 0.2
        tomato.protein = 1.1
        
        var squash = Product()
        squash.name = "Squash"
        squash.weight = 100
        squash.calorieСontent = 24
        squash.carbs = 4.6
        squash.fat = 0.3
        squash.protein = 0.6
        
        var cabbage = Product()
        cabbage.name = "Cabbage"
        cabbage.weight = 100
        cabbage.calorieСontent = 25
        cabbage.carbs = 6
        cabbage.fat = 0.1
        cabbage.protein = 1.3
        
        let vegetablesCategory = CategoryProduct(name: "Vegetables", products: [cucumber, tomato, squash, cabbage])
        
        return vegetablesCategory
    }
    
    func createFruitCategory() -> CategoryProduct {
        
        var orange = Product()
        orange.name = "Orange"
        orange.calorieСontent = 36
        orange.weight = 100
        orange.protein = 0.9
        orange.fat = 0.2
        orange.carbs = 8.1
        
        var banana = Product()
        banana.name = "Banana"
        banana.calorieСontent = 89
        banana.weight = 100
        banana.protein = 1.1
        banana.fat = 0.3
        banana.carbs = 23.0
        
        var kiwi = Product()
        kiwi.name = "Kiwi"
        kiwi.calorieСontent = 61
        kiwi.weight = 100
        kiwi.protein = 1.1
        kiwi.fat = 0.5
        kiwi.carbs = 15.0
        
        var grapefruit = Product()
        grapefruit.name = "Grapefruit"
        grapefruit.calorieСontent = 42
        grapefruit.weight = 100
        grapefruit.protein = 0.8
        grapefruit.fat = 0.1
        grapefruit.carbs = 11.0
        
        let fruitCategory = CategoryProduct(name: "Fruit", products: [orange, banana, grapefruit, kiwi])
        
        return fruitCategory
    }
    
    func createGroatsCategory() -> CategoryProduct {
        
        var oatmeal = Product()
        oatmeal.name = "Oatmel"
        oatmeal.calorieСontent = 377
        oatmeal.weight = 100
        oatmeal.protein = 10
        oatmeal.fat = 6
        oatmeal.carbs = 68
        
        var rice = Product()
        rice.name = "Rice"
        rice.calorieСontent = 130
        rice.weight = 100
        rice.protein = 2.4
        rice.fat = 0.2
        rice.carbs = 29
        
        var brawnRice = Product()
        brawnRice.name = "Brawn rice"
        brawnRice.calorieСontent = 111
        brawnRice.weight = 100
        brawnRice.protein = 2.6
        brawnRice.fat = 0.9
        brawnRice.carbs = 23
        
        var buckwheat = Product()
        buckwheat.name = "Buckwheat"
        buckwheat.calorieСontent = 313
        buckwheat.weight = 100
        buckwheat.protein = 12.6
        buckwheat.fat = 3.3
        buckwheat.carbs = 62.1
        
        let groatsCategory = CategoryProduct(name: "Groats", products: [oatmeal, rice, brawnRice, buckwheat])
        
        return groatsCategory
    }
    
    func createFishCategory() -> CategoryProduct {
        
        var salmon = Product()
        salmon.name = "Salmon"
        salmon.calorieСontent = 208
        salmon.weight = 100
        salmon.protein = 20.0
        salmon.fat = 13.0
        salmon.carbs = 0.0
        
        var forel = Product()
        forel.name = "Forel"
        forel.calorieСontent = 97
        forel.weight = 100
        forel.protein = 19.2
        forel.fat = 2.1
        forel.carbs = 0.0
        
        var tuna = Product()
        tuna.name = "Tuna"
        tuna.calorieСontent = 130
        tuna.weight = 100
        tuna.protein = 29
        tuna.fat = 0.6
        tuna.carbs = 0.0
        
        var seaBass = Product()
        seaBass.name = "Sea Bass"
        seaBass.calorieСontent = 87
        seaBass.weight = 100
        seaBass.protein = 17.7
        seaBass.fat = 1.8
        seaBass.carbs = 0.0
        
        
        let fishCategory = CategoryProduct(name: "Fish", products: [salmon, forel, tuna, seaBass])
        
        return fishCategory
    }
    
    func createFlourCategory() -> CategoryProduct {
        
        var wheatFlour = Product()
        wheatFlour.name = "Wheat Flour"
        wheatFlour.calorieСontent = 364
        wheatFlour.weight = 100
        wheatFlour.protein = 10.0
        wheatFlour.fat = 1.0
        wheatFlour.carbs = 76.0
        
        var ryeFlour = Product()
        ryeFlour.name = "Rye Flour"
        ryeFlour.calorieСontent = 349
        ryeFlour.weight = 100
        ryeFlour.protein = 11.0
        ryeFlour.fat = 13.0
        ryeFlour.carbs = 75.0
        
        var riceFlour = Product()
        riceFlour.name = "Rice Flour"
        riceFlour.calorieСontent = 366
        riceFlour.weight = 100
        riceFlour.protein = 6.0
        riceFlour.fat = 1.4
        riceFlour.carbs = 85.0
        
        let flourCategory = CategoryProduct(name: "Flour", products: [wheatFlour, ryeFlour, riceFlour])
        
        return flourCategory
    }
    
    func createSeaFoodCategory() -> CategoryProduct {
        
        var shrimp = Product()
        shrimp.name = "Shrimp"
        shrimp.calorieСontent = 95
        shrimp.weight = 100
        shrimp.protein = 18.9
        shrimp.fat = 2.2
        shrimp.carbs = 0.0
        
        var squid = Product()
        squid.name = "Squid"
        squid.calorieСontent = 175
        squid.weight = 100
        squid.protein = 18.9
        squid.fat = 7.0
        squid.carbs = 8.0
        
        var mussels = Product()
        mussels.name = "Mussels"
        mussels.calorieСontent = 175
        mussels.weight = 100
        mussels.protein = 18.9
        mussels.fat = 7.0
        mussels.carbs = 8.0
        
        let seaFoodCategory = CategoryProduct(name: "Sea Food", products: [shrimp, squid, mussels])
        
        return seaFoodCategory
    }
    
    func createCheeseCategory() -> CategoryProduct {
        
        var brieCheese = Product()
        brieCheese.name = "Brie cheese"
        brieCheese.calorieСontent = 334
        brieCheese.weight = 100
        brieCheese.protein = 21.0
        brieCheese.fat = 28.0
        brieCheese.carbs = 0.5
       
        var camembert = Product()
        camembert.name = "Сamembert"
        camembert.calorieСontent = 299
        camembert.weight = 100
        camembert.protein = 20.0
        camembert.fat = 24.0
        camembert.carbs = 0.5
        
        var feta = Product()
        feta.name = "Feta"
        feta.calorieСontent = 264
        feta.weight = 100
        feta.protein = 14.0
        feta.fat = 21.0
        feta.carbs = 4.1
        
        let cheeseCategory = CategoryProduct(name: "Cheese", products: [brieCheese, camembert, feta])
        
        return cheeseCategory
    }
    
    func createEggsCategory() -> CategoryProduct {
        
        var rawEgg = Product()
        rawEgg.name = "Egg"
        rawEgg.calorieСontent = 157
        rawEgg.weight = 100
        rawEgg.protein = 12.7
        rawEgg.fat = 10.9
        rawEgg.carbs =  0.7
        
        var boiledEgg = Product()
        boiledEgg.name = "Egg"
        boiledEgg.calorieСontent = 155
        boiledEgg.weight = 100
        boiledEgg.protein = 13.0
        boiledEgg.fat = 11.0
        boiledEgg.carbs = 1.1
        
        
        let eggsCategory = CategoryProduct(name: "Eggs", products: [rawEgg, boiledEgg])
        
        return eggsCategory
    }
    
    func createMilkCategory() -> CategoryProduct {
        
        var milk1 = Product()
        milk1.name = "Mолоко 3.2% Ферма"
        milk1.calorieСontent = 59
        milk1.weight = 100
        milk1.protein = 2.8
        milk1.fat = 3.2
        milk1.carbs =  4.6
    
        let milkCategory = CategoryProduct(name: "Milk", products: [milk1])
        
        return milkCategory
    }
    
    func createMilkProductsCategory() -> CategoryProduct {
        
        var product1 = Product()
        product1.name = "Вершки Сулянськi 33%"
        product1.calorieСontent = 321
        product1.weight = 100
        product1.protein = 2.6
        product1.fat = 33.0
        product1.carbs =  3.1
 
        var product2 = Product()
        product2.name = "Сметаеа Простоквашино 25%"
        product2.calorieСontent = 245
        product2.weight = 100
        product2.protein = 2.4
        product2.fat = 25.0
        product2.carbs =  2.7
        
        var product3 = Product()
        product3.name = "Творог Белоцерковсъкпй 0%"
        product3.calorieСontent = 79
        product3.weight = 100
        product3.protein = 18.0
        product3.fat = 0.0
        product3.carbs =  1.8
        
        let milkProducts = CategoryProduct(name: "Milk Products", products: [product1, product2, product3])
        
        return milkProducts
    }
    
    func createMashroomsCategory() -> CategoryProduct {
        
        var product1 = Product()
        product1.name = "White button mushroom"
        product1.calorieСontent = 27
        product1.weight = 100
        product1.protein = 4.3
        product1.fat = 1.0
        product1.carbs =  0.1
        
        var product2 = Product()
        product2.name = "Crimini mushroom"
        product2.calorieСontent = 22
        product2.weight = 100
        product2.protein = 3.1
        product2.fat = 0.3
        product2.carbs =  3.3
       
        let mashroomsCategory = CategoryProduct(name: "Mashrooms", products: [product1, product2])
        
        return mashroomsCategory
    }
    
    func createNutsCategory() -> CategoryProduct {
        
        var product1 = Product()
        product1.name = "Pistachios"
        product1.calorieСontent = 562
        product1.weight = 100
        product1.protein = 20.0
        product1.fat = 45.0
        product1.carbs =  28.0
        
        var product2 = Product()
        product2.name = "Hazelnuts"
        product2.calorieСontent = 628
        product2.weight = 100
        product2.protein = 15.0
        product2.fat = 61.0
        product2.carbs =  17.0
        
        let nutsCategory = CategoryProduct(name: "Nuts", products: [product1, product2])
        
        return nutsCategory
    }
    
    func createFatOilCategory() -> CategoryProduct {
        
        var product1 = Product()
        product1.name = "Coconut Oil"
        product1.calorieСontent = 899.3
        product1.weight = 100
        product1.protein = 0.8
        product1.fat = 94.9
        product1.carbs =  4.3
        
        var product2 = Product()
        product2.name = "Olive Oil"
        product2.calorieСontent = 900
        product2.weight = 100
        product2.protein = 0.0
        product2.fat = 100.0
        product2.carbs =  0.0
        
        let fatOilCategory = CategoryProduct(name: "Fat/Oil", products: [product1, product2])
        
        return fatOilCategory
    }
    
    func createJuiceCategory() -> CategoryProduct {
        
        let juiseFreshCategory = CategoryProduct(name: "Juice/Fresh", products: [])
        
        return juiseFreshCategory
    }
    
    func createOtherCategory() -> CategoryProduct {
        
        let otherCategory = CategoryProduct(name: "Other Products", products: [])
        
        return otherCategory
    }
}
