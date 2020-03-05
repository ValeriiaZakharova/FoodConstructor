//
//  CreateMealViewController.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 03.03.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class CreateMealViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var titleMealLabel: UILabel!
    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var productsLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    // MARK: - TextFields
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        tableView.reloadData()
    }
    
    
    // MARK: - Actions
    
    @IBAction func didTapAddProduct(_ sender: Any) {
        /// open ProductListViewController
    }
    
    @IBAction func didTapSaveMeal(_ sender: Any) {
        /// save created meal
        
        var newMeal = Meal()
        newMeal.title = titleTextField.text
        newMeal.description = descriptionLable.text
        newMeal.products = products
        
        (navigationController?.viewControllers[0] as! MealsListViewController).meals.append(newMeal)
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - TableViewDelegate

extension CreateMealViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        cell.updateProductCell(product: products[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

// MARK: - Update UI

extension CreateMealViewController {
    
    func updateUI() {
        
        descriptionTextView.layer.borderWidth = 0.5
        descriptionTextView.layer.borderColor = UIColor.lightGray.cgColor
        descriptionTextView.clipsToBounds = true
        descriptionTextView.layer.masksToBounds = false
        descriptionTextView.layer.cornerRadius = 4
        
        addButton.layer.borderWidth = 0.5
        addButton.layer.borderColor = UIColor.lightGray.cgColor
        addButton.clipsToBounds = true
        addButton.layer.masksToBounds = false
        addButton.layer.cornerRadius = 4
    }
}
