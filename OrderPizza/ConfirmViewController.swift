//
//  ConfirmViewController.swift
//  OrderPizza
//
//  Created by Mario on 25/07/16.
//  Copyright © 2016 Mario. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var doughLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    
    
    
    var sizeSelected : String?
    var doughSelected: String?
    var cheeseSelected: String?
    var ingredientsSelected = [String]()
    
    override func viewWillAppear(animated: Bool) {
        sizeLabel.text = sizeSelected
        doughLabel.text = doughSelected
        cheeseLabel.text = cheeseSelected
        
        if ingredientsSelected.count != 0{
            
            var ingredientsChar: String = ingredientsSelected[0]
            for var i = 1; i < ingredientsSelected.count; i++ {
                ingredientsChar += ", " + ingredientsSelected[i]
            }
            
            ingredientsLabel.text = ingredientsChar
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
