//
//  ViewController.swift
//  OrderPizza
//
//  Created by Mario on 22/07/16.
//  Copyright © 2016 Mario. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let sizePizzaData = ["Small", "Medium", "Large"]
    var sizeItem:String?
    
    @IBOutlet weak var sizePizzaPicker: UIPickerView!
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sizePizzaData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sizePizzaData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sizeItem = sizePizzaData[sizePizzaPicker.selectedRowInComponent(0)]
    }
    
    @IBAction func sizeNextButton(sender: AnyObject) {
        
        print("The user selected: \(sizeItem)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sizePizzaPicker.delegate = self
        sizePizzaPicker.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

