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

        switch selected {
        case "ACURA":
            CO2emissions = 145.932
        case "ALFA ROMEO":
            CO2emissions = 115.961
        case "AUDI":
            CO2emissions = 124.968
        case "BENTLEY",
             "PORSCHE",
             "VOLKSWAGEN":
            CO2emissions = 118.551
        case "BMW",
             "MINI",
             "ROLLS-ROYCE":
            CO2emissions = 129.25
        case "BUICK",
             "CADILLAC",
             "CHEVROLET",
             "GMC",
             "PONTIAC",
             "SATURN":
            CO2emissions = 124.19
        case "DODGE",
             "FIAT",
             "RAM":
            CO2emissions = 115.961
        case "FORD",
             "LINCOLN",
             "MERCURY":
            CO2emissions = 118.435
        case "GENESIS",
             "KIA",
             "HYUNDAI":
            CO2emissions = 121.01
        case "HONDA":
            CO2emissions = 133.387
        case "INFINITI":
            CO2emissions = 116.666
        case "LAND ROVER",
             "JAGUAR":
            CO2emissions = 149.841
        case "CHRYSLER",
             "JEEP",
             "MASERATI":
            CO2emissions = 146.673
        case "LEXUS",
             "TOYOTA",
             "SCION",
             "SUBARU":
            CO2emissions = 105.447
        case "MAZDA":
            CO2emissions = 126.74
        case "MERCEDES-BENZ":
            CO2emissions = 125.012
        case "MITSUBISHI",
             "NISSAN":
            CO2emissions = 132.13
        case "SUZUKI":
            CO2emissions = 120.61
        case "LOTUS",
             "POLESTAR",
             "VOLVO":
            CO2emissions = 121.166
        case "TESLA":
            CO2emissions = 0
        default:
            CO2emissions = -1
        }
        
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
