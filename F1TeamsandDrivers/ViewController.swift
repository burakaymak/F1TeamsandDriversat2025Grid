//
//  ViewController.swift
//  F1TeamsandDrivers
//
//  Created by Burak Kaymak on 21.08.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var driversArray = [Teams]()
    var teamsArray = [String]()
    
    var selectedDriver : Teams?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let ferrari = Teams(firstdriverName: "Charles Leclerc", firstdriverImage: UIImage(named: "leclerc")!, seconddriverName: "Lewis Hamilton", seconddriverImage: UIImage(named: "hamilton")!)
        
        let williams = Teams(firstdriverName: "Carlos Sainz", firstdriverImage: UIImage(named: "sainz")!, seconddriverName: "Alex Albon", seconddriverImage:UIImage(named: "albon")!)
        
        let mercedes = Teams(firstdriverName: "George Russell", firstdriverImage: UIImage(named : "russell")!, seconddriverName: "Kimi Antonelli", seconddriverImage: UIImage(named: "antonelli")!)
        
        let redbullracing = Teams(firstdriverName: "Max Verstappen", firstdriverImage: UIImage(named: "verstappen")!, seconddriverName: "Yuki Tsunoda", seconddriverImage: UIImage(named : "tsunoda")!)
        
        let mclaren = Teams(firstdriverName: "Oscar Piastri", firstdriverImage: UIImage(named: "piastri")!, seconddriverName: "Lando Norris", seconddriverImage: UIImage(named: "norris")!)
        
        let astonmartin = Teams(firstdriverName: "Fernando Alonso", firstdriverImage: UIImage(named: "alonso")!, seconddriverName: "Lance Stroll", seconddriverImage: UIImage(named: "stroll")!)
        
        let haas = Teams(firstdriverName: "Estaban Ocon", firstdriverImage: UIImage(named: "ocon")!, seconddriverName: "Oliver Bearman", seconddriverImage: UIImage(named: "bearman")!)
        
        let sauber = Teams(firstdriverName: "Nico Hülkenberg", firstdriverImage: UIImage(named: "hulkenberg")!, seconddriverName: "Gabriel Bortoleto", seconddriverImage: UIImage(named: "bortoleto")!)
        
        let racingbulls = Teams(firstdriverName: "Liam Lawson", firstdriverImage: UIImage(named: "lawson")!, seconddriverName: "Isack Hadjar", seconddriverImage: UIImage(named: "hadjar")!)
        
        let alpine = Teams(firstdriverName: "Pierre Gasly", firstdriverImage: UIImage(named: "gasly")!, seconddriverName: "Franco Colapinto", seconddriverImage: UIImage(named: "colapinto")!)
        
        driversArray.append(ferrari)
        driversArray.append(redbullracing)
        driversArray.append(mercedes)
        driversArray.append(mclaren)
        driversArray.append(williams)
        driversArray.append(astonmartin)
        driversArray.append(sauber)
        driversArray.append(racingbulls)
        driversArray.append(alpine)
        driversArray.append(haas)
        
        
        
        
        teamsArray.append("Scuderia Ferrari")
        teamsArray.append("Redbull Racing")
        teamsArray.append("Mercedes")
        teamsArray.append("McLaren")
        teamsArray.append("Williams")
        teamsArray.append("Aston Martin")
        teamsArray.append("Kick Sauber")
        teamsArray.append("RB")
        teamsArray.append("Alpine")
        teamsArray.append("Haas")
        
                
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = teamsArray[indexPath.row]
        cell.contentConfiguration = content
                
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedDriver = driversArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.chosenDriver = selectedDriver
            
        }
    }


}

