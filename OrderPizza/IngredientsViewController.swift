//
//  IngredientsViewController.swift
//  OrderPizza
//
//  Created by Mario on 25/07/16.
//  Copyright © 2016 Mario. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {

    @IBOutlet weak var pinappleSwitch: UISwitch!
    @IBOutlet weak var pepperoniSwitch: UISwitch!
    @IBOutlet weak var pepperSwitch: UISwitch!
    @IBOutlet weak var anchovieSwitch: UISwitch!
    @IBOutlet weak var sausageSwitch: UISwitch!
    
    @IBOutlet weak var hamSwitch: UISwitch!
    @IBOutlet weak var onionSwitch: UISwitch!
    @IBOutlet weak var turkeySwitch: UISwitch!
    @IBOutlet weak var oliveSwitch: UISwitch!
    
    var sizeSelected : String?
    var doughSelected : String?
    var cheeseSelected : String?
    var ingredientsArray = [String]()
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let followView = segue.destinationViewController as! ConfirmViewController
        followView.sizeSelected = sizeSelected
        followView.doughSelected = doughSelected
        followView.cheeseSelected = cheeseSelected
        followView.ingredientsSelected = ingredientsArray
    }
    
    @IBAction func addIngredients(sender: UIButton) {
        
        var numIngredients : Int = 0
        var ingredientsSelected = [String]()

        if pinappleSwitch.on{
            if !ingredientsSelected.contains("Pinapple")  {
                numIngredients += 1
                ingredientsSelected.append("Pinapple")
            }
        }
        
        if hamSwitch.on{
            if !ingredientsSelected.contains("Ham") {
                numIngredients += 1
                ingredientsSelected.append("Ham")
            }
        }
        
        if onionSwitch.on{
            if !ingredientsSelected.contains("Onion") {
                numIngredients += 1
                ingredientsSelected.append("Onion")
            }
        }
        
        if turkeySwitch.on{
            if !ingredientsSelected.contains("Turkey") {
                numIngredients += 1
                ingredientsSelected.append("Turkey")
            }
        }
        
        if oliveSwitch.on{
            if !ingredientsSelected.contains("Olives") {
                numIngredients += 1
                ingredientsSelected.append("Olives")
            }
        }
        
        if anchovieSwitch.on{
            if !ingredientsSelected.contains("Anchovies") {
                numIngredients += 1
                ingredientsSelected.append("Anchovies")
            }
        }
        
        if pepperoniSwitch.on{
            if !ingredientsSelected.contains("Pepperoni") {
                numIngredients += 1
                ingredientsSelected.append("Pepperoni")
            }
        }
        
        if pepperSwitch.on{
            if !ingredientsSelected.contains("Pepper") {
                numIngredients += 1
                ingredientsSelected.append("Pepper")
            }
        }
        
        if sausageSwitch.on{
            if !ingredientsSelected.contains("Sausage"){
                numIngredients += 1
                ingredientsSelected.append("Sausage")
            }
        }
        
        if ingredientsSelected.count > 5{
            let alertController = UIAlertController(title: "Error", message: "You can't add more that 5 ingredients", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(alert :UIAlertAction!) in
                print("OK button tapped")
            })
            alertController.addAction(okAction)
            
            presentViewController(alertController, animated: true, completion: nil)
        }else if ingredientsSelected.count == 0{
            let alertController = UIAlertController(title: "Error", message: "You must add at least 1 ingredient", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(alert :UIAlertAction!) in
                print("OK button tapped")
            })
            alertController.addAction(okAction)
            
            presentViewController(alertController, animated: true, completion: nil)
            
        }
        else{
            ingredientsArray = ingredientsSelected
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
