//
//  DetailsVC.swift
//  F1TeamsandDrivers
//
//  Created by Burak Kaymak on 21.08.2025.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var firstdriverName: UILabel!
    @IBOutlet weak var firstdriverImage: UIImageView!
    @IBOutlet weak var seconddriverName: UILabel!
    @IBOutlet weak var seconddriverImage: UIImageView!
    
    var chosenDriver : Teams?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstdriverName.text = chosenDriver?.firstdriverName
        firstdriverImage.image = chosenDriver?.firstdriverImage
        seconddriverName.text = chosenDriver?.seconddriverName
        seconddriverImage.image = chosenDriver?.seconddriverImage
        
    
        
    }
    

    

}
