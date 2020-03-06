//
//  CreateNewProductViewController.swift
//  FoodConstructor
//
//  Created by Valeriia Zakharova on 26.02.2020.
//  Copyright © 2020 Valeriia Zakharova. All rights reserved.
//

import UIKit

class CreateNewProductViewController: UIViewController {
    //outlets
    @IBOutlet private weak var productNameTextField: UITextField!
    @IBOutlet private weak var productAmountTextField: UITextField!
    @IBOutlet private weak var caloriesTextField: UITextField!
    @IBOutlet private weak var fatTextField: UITextField!
    @IBOutlet private weak var carbohydratesTextField: UITextField!
    @IBOutlet private weak var proteinTextField: UITextField!
    @IBOutlet private weak var categoryTextField: UITextField!
    
    @IBOutlet private weak var scrollView: UIScrollView!
    
    private let categoryPicker = UIPickerView()
    
    private let categories = ProductCategory.allCases

    private var selectedCategory: ProductCategory?
    
    
    /// textfields with `number` keyboard type
    private var numberTextFields: [UITextField] {
        return [
            productAmountTextField,
            caloriesTextField,
            fatTextField,
            carbohydratesTextField,
            proteinTextField
        ]
    }
    
    
    private var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupKeyboard()
        setupPicker()
        
        productNameTextField.delegate = self
        productAmountTextField.delegate = self
        caloriesTextField.delegate = self
        fatTextField.delegate = self
        carbohydratesTextField.delegate = self
        proteinTextField.delegate = self
        
        products = (navigationController?.viewControllers[2] as! ProductListViewController).products
        
        /// show Lera when it can cause problems in the nearest future
        subscribeKeyboardNotifications()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(backgroundTapped))
        view.addGestureRecognizer(gesture)
        
        // play with edge insets
//        scrollView.contentInset = UIEdgeInsets.init(top: 100, left: 100, bottom: 1000, right: 100)
        
    }
    
    // MARK: - Action
    
    @IBAction func didTapAddNewProduct(_ sender: Any) {
        var newProduct = Product()
        newProduct.name = productNameTextField.text
        
        if let weight = productAmountTextField.text {
            newProduct.weight = Double(weight)
        }
        if let calories = caloriesTextField.text {
            newProduct.calorieСontent = Double(calories)
        }
        if let fat = fatTextField.text {
            newProduct.fat = Double(fat)
        }
        if let carbs = carbohydratesTextField.text {
            newProduct.carbs = Double(carbs)
        }
        if let protein = proteinTextField.text {
            newProduct.protein = Double(protein)
        }
        newProduct.category = selectedCategory
        
        if isProductReadyForCreate(newProduct) == false{
            showAlert()
            return
        }
        
        (navigationController?.viewControllers[2] as! ProductListViewController).products.append(newProduct)
        navigationController?.popViewController(animated: true)
    }

    @objc
    func backgroundTapped() {
        self.view.endEditing(true)
    }
    
    @objc
    func keyboardWillHide(_ notification: Notification) {
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    @objc
    func keyboardWillShow(_ notification: Notification) {
        guard let rectValue = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue) else {
            return
        }
        let keyboardFrame = rectValue.cgRectValue
        
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardFrame.height, right: 0)
    }
    
    @objc
    func keyboardNextTapped() {
        let textField = numberTextFields.first { field -> Bool in
            field.isFirstResponder
        }
        
        if let field = textField {
            textFieldShouldReturn(field)
        }
    }
    
    @objc func pickerDoneTapped() {
        let row = categoryPicker.selectedRow(inComponent: 0)
        selectedCategory = categories[row]
        categoryTextField.text = selectedCategory?.rawValue
        textFieldShouldReturn(categoryTextField)
    }
}

private extension CreateNewProductViewController {
    func subscribeKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func unsubscribeKeyboardNotifications() {
        // TODO: Add code when it will be needed
    }
    
    func setupKeyboard() {
        let toolbarWidth = view.bounds.width
        let toolbar = UIToolbar(frame: CGRect(origin: .zero, size: CGSize(width: toolbarWidth, height: 44)))
        
        let nextButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(keyboardNextTapped))
        
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.setItems([space, nextButton], animated: false)
        
        numberTextFields.forEach { field in
            field.inputAccessoryView = toolbar
        }
    }
    
    func setupPicker() {
        categoryPicker.delegate = self
        categoryPicker.dataSource = self
        
        let toolbarWidth = view.bounds.width
        let toolbar = UIToolbar(frame: CGRect(origin: .zero, size: CGSize(width: toolbarWidth, height: 44)))
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(pickerDoneTapped))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.setItems([space, doneButton], animated: false)
        
        categoryTextField.inputAccessoryView = toolbar
        categoryTextField.inputView = categoryPicker
    }
    
    /// shows alert when some of the required fileds are empty
    func showAlert() {
        let alertController = UIAlertController(title: nil, message: "Please fill all fields", preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func isProductReadyForCreate(_ product: Product) -> Bool {
        guard product.calorieСontent != nil else { return false }
        
        guard product.name != nil else { return false }
        
        guard product.carbs != nil else { return false }
        
        guard product.protein != nil else { return false }
        
        guard product.fat != nil else { return false }
        
        guard product.category != nil else { return false }
        
        guard product.weight != nil else { return false }
        
        return true
    }
}

extension CreateNewProductViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int { 1 }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row].rawValue
    }
}

// MARK: - UITextFieldDelegate

extension CreateNewProductViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == categoryTextField {
            if let category = selectedCategory, let row = categories.firstIndex(of: category) {
                categoryPicker.selectRow(row, inComponent: 0, animated: false)
            }
        }
        return true
    }
    
    @discardableResult
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case productNameTextField:
            productAmountTextField.becomeFirstResponder()
        case productAmountTextField:
            caloriesTextField.becomeFirstResponder()
        case caloriesTextField:
            fatTextField.becomeFirstResponder()
        case fatTextField:
            carbohydratesTextField.becomeFirstResponder()
        case carbohydratesTextField:
            proteinTextField.becomeFirstResponder()
        case proteinTextField:
            categoryTextField.becomeFirstResponder()
        case categoryTextField:
            view.endEditing(true)
        default:
            fatalError()
        }
        return true
    }
}
