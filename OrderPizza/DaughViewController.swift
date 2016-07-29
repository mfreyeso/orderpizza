//
//  DaughViewController.swift
//  OrderPizza
//
//  Created by Mario on 25/07/16.
//  Copyright © 2016 Mario. All rights reserved.
//

import UIKit

class DaughViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var doughPicker: UIPickerView!
    
    var doughData = ["Thin", "Crisp", "Thick"]
    var sizePizzaSelected : String?
    var doughItem : String?
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return doughData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return doughData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        doughItem = doughData[doughPicker.selectedRowInComponent(0)]
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let followView = segue.destinationViewController as! CheeseViewController
        followView.sizePizzaSelected = sizePizzaSelected
        followView.doughSelected = doughItem
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doughPicker.dataSource = self
        doughPicker.delegate = self
        doughPicker.selectRow(1, inComponent: 0, animated: false)
        doughItem = doughData[1]

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
