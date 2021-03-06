//
//  ViewController.swift
//  PickerView
//
//  Created by R. Kukuh on 31/01/19.
//  Copyright © 2019 R. Kukuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
                      UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var citiesPickerView: UIPickerView!
    
    let cities = ["Jakarta", "Surabaya", "Bandung", "Sidoarjo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int) {
        print("User selected row #\(row) of the \(component) component")
    }
    
    // MARK: PickerView's delegate stubs
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return cities[row]
    }
    
    // MARK: PickerView's protocol stubs
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
}

