//
//  MealDetailViewController.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 04.03.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var descriptionTextView: UITextView!
    
    @IBOutlet private weak var tableView: UITableView!
    
    var meal: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
    }
    
    
}
   // MARK: - TableViewDelegates

extension MealDetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return meal.products?.count
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        
        
        return cell
    }

}
