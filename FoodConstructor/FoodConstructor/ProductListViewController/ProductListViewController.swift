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
    
    private let searchController = UISearchController()
    
    var products: [Product] = [] {
        didSet {
            updateFilteredProducts()
        }
    }
    
    private var filteredProducts: [Product] = []
    
    private var selectedProducts: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBarButtons()
        setupSearchBar()
        
        toggleButton(enabled: false)
        
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        products = StorageProduct().createProducts()
        filteredProducts = products
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    // MARK: - Actions
    
    @IBAction func didTapAddSelectedProducts(_ sender: Any) {
//
//        /// show alert when no cells were choosen
//
//        guard let indexPaths = tableView.indexPathsForSelectedRows else {
//            return
//        }
//        var newProducts: [Product]  = []
//
//        for indexPath in indexPaths {
//            let selectedProduct = products[indexPath.row]
//            newProducts.append(selectedProduct)
//        }
        
        
        
        (navigationController?.viewControllers[1] as! CreateMealViewController).products.append(contentsOf: selectedProducts)
        navigationController?.popViewController(animated: true)
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
        return filteredProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // get product that is going to be displayed
        let product = filteredProducts[indexPath.row]
        
        // check whether product contains in `selectedProducts` (it means that it was selected before)
        let containsProductFlag = selectedProducts.contains { (elementProduct) -> Bool in
            elementProduct.name == product.name
        }
        
        // if so, tell table that cell at `indexPath` is selected by `selectRow(at: indexPath...`
        if containsProductFlag == true {
            tableView.selectRow(at: indexPath, animated: false, scrollPosition: .none)
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        cell.updateProductCell(product: product)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = filteredProducts[indexPath.row]
        selectedProducts.append(product)
        toggleButton(enabled: true)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let unselectedProduct = filteredProducts[indexPath.row]
        
        // search for the index of the product that is going to be unselected
        let index = selectedProducts.firstIndex { (product) -> Bool in
            unselectedProduct.name == product.name
        }
        
        // since we CANNOT remove `product` directly from the selectedProducts, we remove at found index
        selectedProducts.remove(at: index!)
        
        
        if tableView.indexPathsForSelectedRows == nil {
            toggleButton(enabled: false)
        }
    }
    
    func toggleButton(enabled: Bool) {
        doneButton.isEnabled = enabled
        doneButton.alpha = enabled ? 1 : 0.5
    }
}


private extension ProductListViewController {
    
    func setupSearchBar() {
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
    }
    
    func setUpBarButtons() {
        
        let filter = UIBarButtonItem(title: "Filter", style: .done, target: self, action: #selector(filterTapped))
        filter.tintColor = UIColor.black
        
        navigationItem.rightBarButtonItems = [addBarButtonItem, filter]
    }
    
    func updateFilteredProducts() {
        guard let searchText = searchController.searchBar.text?.lowercased(), searchText.count > 0 else {
            filteredProducts = products
            tableView.reloadData()
            return
        }
        
        filteredProducts = products.filter({ (product) -> Bool in
            return product.name?.lowercased().contains(searchText) == true
        })
        
        tableView.reloadData()
    }
    
}

extension ProductListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        updateFilteredProducts()
    }
}
