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
    
    @IBOutlet weak var hamSwitch: UISwitch!
    @IBOutlet weak var onionSwitch: UISwitch!
    @IBOutlet weak var turkeySwitch: UISwitch!
    @IBOutlet weak var oliveSwitch: UISwitch!
    
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
