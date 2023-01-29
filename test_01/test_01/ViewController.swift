//
//  ViewController.swift
//  test_01
//
//  Created by Juan Aguilar on 07/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcome: UILabel!
    
    
    // Outlets
    // Are direct references to our objects.
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var page: UIPageControl!
    
    // Data
    let countries = ["USA", "Canada", "Colombia", "Mexico", "Brazil"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Picker caracteristics
        picker.backgroundColor = .lightGray
        picker.dataSource = self
        picker.delegate = self
        
        // Page control caracteristics
        page.numberOfPages = countries.count
        page.currentPageIndicatorTintColor = .blue
        page.pageIndicatorTintColor = .lightGray
        
    }
    
    // Actions
    @IBAction func btn(_ sender: Any) {
        
    }
    
    @IBAction func page(_ sender: Any) {
        picker.selectRow(page.currentPage, inComponent: 0, animated: true)
        
        let str = countries[page.currentPage]
        btn.setTitle(str, for: .normal)
    }
    
    
    

}

// Data for picker, methods
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    // DATA for picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let str = countries[row]
        btn.setTitle(str, for: .normal)
        page.currentPage = row
        
    }
    
}

