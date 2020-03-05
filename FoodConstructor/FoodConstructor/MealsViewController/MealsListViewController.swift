//
//  MealsListViewController.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 03.03.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class MealsListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var meals: [Meal] = []
    
    var expandedIndexPaths: Set<IndexPath> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "MealCell", bundle: nil), forCellReuseIdentifier: "MealCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
}

//MARK: - Cell Delegate

extension MealsListViewController: MealCellDelegate {
    func didTapToggle(cell: MealCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else {
            return
        }
        
        if expandedIndexPaths.contains(indexPath) {
            expandedIndexPaths.remove(indexPath)
            cell.updateMealCell(mealModel: meals[indexPath.row], isExpanded: false)
        } else {
            expandedIndexPaths.insert(indexPath)
            cell.updateMealCell(mealModel: meals[indexPath.row], isExpanded: true)
        }
        
        cell.setNeedsLayout()
        tableView.beginUpdates()
        tableView.endUpdates()
    }
}

// MARK: - TableViewDelegat

extension MealsListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath) as! MealCell
        cell.delegate = self
        let isExpanded = expandedIndexPaths.contains(indexPath)
        cell.updateMealCell(mealModel: meals[indexPath.row], isExpanded: isExpanded)
        cell.updateCellUI()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboardMain.instantiateViewController(identifier: "MealDetailViewController") as! MealDetailViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
