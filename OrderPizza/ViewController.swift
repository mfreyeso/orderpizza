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
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let followView = segue.destinationViewController as! DaughViewController
        followView.sizePizzaSelected = sizeItem
    }
    
    @IBAction func sizeNextButton(sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sizePizzaPicker.delegate = self
        sizePizzaPicker.dataSource = self
        sizePizzaPicker.selectRow(1, inComponent: 0, animated: false)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

