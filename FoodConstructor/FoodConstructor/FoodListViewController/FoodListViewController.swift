//
//  FoodListViewController.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 26.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class FoodListViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    @IBOutlet private weak var doneButton: UIButton!
    
    var products: [Product] = []

    override func viewDidLoad() {
        super.viewDidLoad()
            
        toggleButton(enabled: false)

        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        products = StorageProduct().createProducts()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    // MARK: - Actions
    
    @IBAction func didTapAddSelectedProducts(_ sender: Any) {
        
        /// show alert when no cells were choosen
        
        guard let indexPaths = tableView.indexPathsForSelectedRows else {
            return
        }
        var newProducts: [Product]  = []
        
        for indexPath in indexPaths {
            let selectedRows = products[indexPath.row]
            newProducts.append(selectedRows)
        }
       
        (navigationController?.viewControllers[1] as! CreateMealViewController).products.append(contentsOf: newProducts)
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - TableViewDelegate

extension FoodListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        cell.updateProductCell(product: products[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        toggleButton(enabled: true)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if tableView.indexPathsForSelectedRows == nil {
            toggleButton(enabled: false)
        }
    }
    
    func toggleButton(enabled: Bool) {
        doneButton.isEnabled = enabled
        doneButton.alpha = enabled ? 1 : 0.5
    }
    
}


