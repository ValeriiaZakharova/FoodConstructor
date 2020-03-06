//
//  ProductListViewController.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 26.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    @IBOutlet private weak var doneButton: UIButton!
    
    @IBOutlet weak var addBarButtonItem: UIBarButtonItem!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUPBarButtons()
        
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
    
    func setUPBarButtons() {
        
        let filter = UIBarButtonItem(title: "Filter", style: .done, target: self, action: #selector(filterTapped))
        filter.tintColor = UIColor.black
        
        navigationItem.rightBarButtonItems = [addBarButtonItem, filter]
    }
    
    @objc
    func filterTapped() {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboardMain.instantiateViewController(identifier: "ProductFilterViewController") as! ProductFilterViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - TableViewDelegate

extension ProductListViewController: UITableViewDelegate, UITableViewDataSource {
    
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


