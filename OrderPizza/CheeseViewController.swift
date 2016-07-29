//
//  CheeseViewController.swift
//  OrderPizza
//
//  Created by Mario on 25/07/16.
//  Copyright © 2016 Mario. All rights reserved.
//

import UIKit

class CheeseViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var cheesePicker: UIPickerView!
    var cheeseData = ["Mozarella", "Cheddar", "Parmesan", "No Cheese"]
    
    
    var sizePizzaSelected: String?
    var doughSelected: String?
    
    var cheeseItem: String?
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cheeseData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cheeseData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cheeseItem = cheeseData[cheesePicker.selectedRowInComponent(0)]
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let followView = segue.destinationViewController as! IngredientsViewController
        followView.sizeSelected = sizePizzaSelected
        followView.doughSelected = doughSelected
        followView.cheeseSelected = cheeseItem
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cheesePicker.dataSource = self
        cheesePicker.delegate = self
        cheesePicker.selectRow(1, inComponent: 0, animated: false)
        cheeseItem = cheeseData[1]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
