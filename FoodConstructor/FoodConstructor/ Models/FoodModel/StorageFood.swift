//
//  Storage.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 25.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import Foundation

struct StorageProduct {
    
    func createProducts() -> [Product] {
        
        var beef = Product()
        beef.name = "Beef"
        beef.weight = 100
        beef.calorieСontent = 250
        beef.protein = 26.0
        beef.carbs = 0.0
        beef.fat = 15.0
        beef.category = .meat
        
        var pork = Product()
        pork.name = "Pork"
        pork.weight = 100
        pork.calorieСontent = 242
        pork.carbs = 0.8
        pork.fat = 7
        pork.protein = 19
        pork.category = .meat
        
        var veal = Product()
        veal.name = "Veal"
        veal.weight = 100
        veal.calorieСontent = 172
        veal.carbs = 0.0
        veal.fat = 7.0
        veal.protein = 24.0
        veal.category = .meat
        
        var chicken = Product()
        chicken.name = "Veal"
        chicken.weight = 100
        chicken.calorieСontent = 239
        chicken.carbs = 0.0
        chicken.fat = 14.0
        chicken.protein = 27.0
        chicken.category = .meat
        
        var cucumber = Product()
        cucumber.name = "Cucumber"
        cucumber.weight = 100
        cucumber.calorieСontent = 15
        cucumber.carbs = 2.8
        cucumber.fat = 0.1
        cucumber.protein = 0.8
        cucumber.category = .vegetables
        
        var tomato = Product()
        tomato.name = "Tomato"
        tomato.weight = 100
        tomato.calorieСontent = 20
        tomato.carbs = 3.7
        tomato.fat = 0.2
        tomato.protein = 1.1
        tomato.category = .vegetables
        
        var squash = Product()
        squash.name = "Squash"
        squash.weight = 100
        squash.calorieСontent = 24
        squash.carbs = 4.6
        squash.fat = 0.3
        squash.protein = 0.6
        squash.category = .vegetables
        
        var cabbage = Product()
        cabbage.name = "Cabbage"
        cabbage.weight = 100
        cabbage.calorieСontent = 25
        cabbage.carbs = 6
        cabbage.fat = 0.1
        cabbage.protein = 1.3
        cabbage.category = .vegetables
        
        var orange = Product()
        orange.name = "Orange"
        orange.calorieСontent = 36
        orange.weight = 100
        orange.protein = 0.9
        orange.fat = 0.2
        orange.carbs = 8.1
        orange.category = .fruit
        
        var banana = Product()
        banana.name = "Banana"
        banana.calorieСontent = 89
        banana.weight = 100
        banana.protein = 1.1
        banana.fat = 0.3
        banana.carbs = 23.0
        banana.category = .fruit
        
        var kiwi = Product()
        kiwi.name = "Kiwi"
        kiwi.calorieСontent = 61
        kiwi.weight = 100
        kiwi.protein = 1.1
        kiwi.fat = 0.5
        kiwi.carbs = 15.0
        kiwi.category = .fruit
        
        var grapefruit = Product()
        grapefruit.name = "Grapefruit"
        grapefruit.calorieСontent = 42
        grapefruit.weight = 100
        grapefruit.protein = 0.8
        grapefruit.fat = 0.1
        grapefruit.carbs = 11.0
        grapefruit.category = .fruit
        
        var oatmeal = Product()
        oatmeal.name = "Oatmel"
        oatmeal.calorieСontent = 377
        oatmeal.weight = 100
        oatmeal.protein = 10
        oatmeal.fat = 6
        oatmeal.carbs = 68
        oatmeal.category = .groats
        
        var rice = Product()
        rice.name = "Rice"
        rice.calorieСontent = 130
        rice.weight = 100
        rice.protein = 2.4
        rice.fat = 0.2
        rice.carbs = 29
        rice.category = .groats
        
        var brawnRice = Product()
        brawnRice.name = "Brawn rice"
        brawnRice.calorieСontent = 111
        brawnRice.weight = 100
        brawnRice.protein = 2.6
        brawnRice.fat = 0.9
        brawnRice.carbs = 23
        brawnRice.category = .groats
        
        var buckwheat = Product()
        buckwheat.name = "Buckwheat"
        buckwheat.calorieСontent = 313
        buckwheat.weight = 100
        buckwheat.protein = 12.6
        buckwheat.fat = 3.3
        buckwheat.carbs = 62.1
        buckwheat.category = .groats
        
        var salmon = Product()
        salmon.name = "Salmon"
        salmon.calorieСontent = 208
        salmon.weight = 100
        salmon.protein = 20.0
        salmon.fat = 13.0
        salmon.carbs = 0.0
        salmon.category = .fish
        
        var forel = Product()
        forel.name = "Forel"
        forel.calorieСontent = 97
        forel.weight = 100
        forel.protein = 19.2
        forel.fat = 2.1
        forel.carbs = 0.0
        forel.category = .fish
        
        var tuna = Product()
        tuna.name = "Tuna"
        tuna.calorieСontent = 130
        tuna.weight = 100
        tuna.protein = 29
        tuna.fat = 0.6
        tuna.carbs = 0.0
        tuna.category = .fish
        
        var seaBass = Product()
        seaBass.name = "Sea Bass"
        seaBass.calorieСontent = 87
        seaBass.weight = 100
        seaBass.protein = 17.7
        seaBass.fat = 1.8
        seaBass.carbs = 0.0
        seaBass.category = .fish
        
        var wheatFlour = Product()
        wheatFlour.name = "Wheat Flour"
        wheatFlour.calorieСontent = 364
        wheatFlour.weight = 100
        wheatFlour.protein = 10.0
        wheatFlour.fat = 1.0
        wheatFlour.carbs = 76.0
        wheatFlour.category = .flour
        
        var ryeFlour = Product()
        ryeFlour.name = "Rye Flour"
        ryeFlour.calorieСontent = 349
        ryeFlour.weight = 100
        ryeFlour.protein = 11.0
        ryeFlour.fat = 13.0
        ryeFlour.carbs = 75.0
        ryeFlour.category = .flour
        
        var riceFlour = Product()
        riceFlour.name = "Rice Flour"
        riceFlour.calorieСontent = 366
        riceFlour.weight = 100
        riceFlour.protein = 6.0
        riceFlour.fat = 1.4
        riceFlour.carbs = 85.0
        riceFlour.category = .flour
        
        var shrimp = Product()
        shrimp.name = "Shrimp"
        shrimp.calorieСontent = 95
        shrimp.weight = 100
        shrimp.protein = 18.9
        shrimp.fat = 2.2
        shrimp.carbs = 0.0
        shrimp.category = .seaFood
        
        var squid = Product()
        squid.name = "Squid"
        squid.calorieСontent = 175
        squid.weight = 100
        squid.protein = 18.9
        squid.fat = 7.0
        squid.carbs = 8.0
        squid.category = .seaFood
        
        var mussels = Product()
        mussels.name = "Mussels"
        mussels.calorieСontent = 175
        mussels.weight = 100
        mussels.protein = 18.9
        mussels.fat = 7.0
        mussels.carbs = 8.0
        mussels.category = .seaFood
        
        var brieCheese = Product()
        brieCheese.name = "Brie cheese"
        brieCheese.calorieСontent = 334
        brieCheese.weight = 100
        brieCheese.protein = 21.0
        brieCheese.fat = 28.0
        brieCheese.carbs = 0.5
        brieCheese.category = .cheese
        
        var camembert = Product()
        camembert.name = "Сamembert"
        camembert.calorieСontent = 299
        camembert.weight = 100
        camembert.protein = 20.0
        camembert.fat = 24.0
        camembert.carbs = 0.5
        camembert.category = .cheese
        
        var feta = Product()
        feta.name = "Feta"
        feta.calorieСontent = 264
        feta.weight = 100
        feta.protein = 14.0
        feta.fat = 21.0
        feta.carbs = 4.1
        feta.category = .cheese
        
        var rawEgg = Product()
        rawEgg.name = "Egg"
        rawEgg.calorieСontent = 157
        rawEgg.weight = 100
        rawEgg.protein = 12.7
        rawEgg.fat = 10.9
        rawEgg.carbs =  0.7
        rawEgg.category = .eggs
        
        var boiledEgg = Product()
        boiledEgg.name = "Egg"
        boiledEgg.calorieСontent = 155
        boiledEgg.weight = 100
        boiledEgg.protein = 13.0
        boiledEgg.fat = 11.0
        boiledEgg.carbs = 1.1
        boiledEgg.category = .eggs
        
        var milk1 = Product()
        milk1.name = "Mолоко 3.2% Ферма"
        milk1.calorieСontent = 59
        milk1.weight = 100
        milk1.protein = 2.8
        milk1.fat = 3.2
        milk1.carbs =  4.6
        milk1.category = .milk
        
        var cream = Product()
        cream.name = "Вершки Сулянськi 33%"
        cream.calorieСontent = 321
        cream.weight = 100
        cream.protein = 2.6
        cream.fat = 33.0
        cream.carbs =  3.1
        cream.category = .dairyProducts
        
        var sourCream = Product()
        sourCream.name = "Сметана Простоквашино 25%"
        sourCream.calorieСontent = 245
        sourCream.weight = 100
        sourCream.protein = 2.4
        sourCream.fat = 25.0
        sourCream.carbs =  2.7
        sourCream.category = .dairyProducts
        
        var cottageСheese = Product()
        cottageСheese.name = "Творог Белоцерковсъкпй 0%"
        cottageСheese.calorieСontent = 79
        cottageСheese.weight = 100
        cottageСheese.protein = 18.0
        cottageСheese.fat = 0.0
        cottageСheese.carbs =  1.8
        cottageСheese.category = .dairyProducts
        
        var mushroom1 = Product()
        mushroom1.name = "White button mushroom"
        mushroom1.calorieСontent = 27
        mushroom1.weight = 100
        mushroom1.protein = 4.3
        mushroom1.fat = 1.0
        mushroom1.carbs =  0.1
        mushroom1.category = .mushroom
        
        var mushroom = Product()
        mushroom.name = "Crimini mushroom"
        mushroom.calorieСontent = 22
        mushroom.weight = 100
        mushroom.protein = 3.1
        mushroom.fat = 0.3
        mushroom.carbs =  3.3
        mushroom.category = .mushroom
        
        var pistachios = Product()
        pistachios.name = "Pistachios"
        pistachios.calorieСontent = 562
        pistachios.weight = 100
        pistachios.protein = 20.0
        pistachios.fat = 45.0
        pistachios.carbs =  28.0
        pistachios.category = .nuts
        
        var hazelnuts = Product()
        hazelnuts.name = "Hazelnuts"
        hazelnuts.calorieСontent = 628
        hazelnuts.weight = 100
        hazelnuts.protein = 15.0
        hazelnuts.fat = 61.0
        hazelnuts.carbs =  17.0
        hazelnuts.category = .nuts
        
        var coconutOil = Product()
        coconutOil.name = "Coconut Oil"
        coconutOil.calorieСontent = 899.3
        coconutOil.weight = 100
        coconutOil.protein = 0.8
        coconutOil.fat = 94.9
        coconutOil.carbs =  4.3
        coconutOil.category = .fatOil
        
        var oliveOil = Product()
        oliveOil.name = "Olive Oil"
        oliveOil.calorieСontent = 900
        oliveOil.weight = 100
        oliveOil.protein = 0.0
        oliveOil.fat = 100.0
        oliveOil.carbs =  0.0
        oliveOil.category = .fatOil
        
        return [oliveOil, coconutOil, hazelnuts, pistachios, mushroom, mushroom1, cottageСheese, sourCream, cream, milk1, boiledEgg, rawEgg, feta, camembert, brieCheese, mussels, squid, shrimp, riceFlour, ryeFlour, wheatFlour, seaBass, tuna, forel, salmon, buckwheat, brawnRice, rice, oatmeal, grapefruit, kiwi, orange, banana, cabbage, squash, tomato, cucumber, chicken, veal, pork, beef]
    }
}
