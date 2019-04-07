//
//  cowculateViewController.swift
//  carsNcows
//
//  Created by Haley Kim on 4/6/19.
//  Copyright © 2019 Haley & Emily. All rights reserved.
//

import UIKit

class cowculateViewController: UIViewController {

    var selected: String!
    var CO2emissions: Double!
    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CowCalculate says:", selected)
        
        backButton.layer.cornerRadius = 7
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
