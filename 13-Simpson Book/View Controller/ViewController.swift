//
//  ViewController.swift
//  13-Simpson Book
//
//  Created by Selcuk Baki on 19/8/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpsons]()
    var chosenSimpson : Simpsons?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        let homer = Simpsons(nameInit: "Homer Simpson", jobInit: "Nuclear Safety", ageInit: 50, imageInit: UIImage(named: "homer")!)
        let marge = Simpsons(nameInit: "Marge Simpson", jobInit: " Housewife", ageInit: 45, imageInit: UIImage(named: "marge")!)
        let bart = Simpsons(nameInit: "Bart Simpson", jobInit: " Student", ageInit: 10, imageInit: UIImage(named: "bart")!)
        let lisa = Simpsons(nameInit: "Lisa Simpson", jobInit: " Student ", ageInit: 12, imageInit: UIImage(named: "lisa")!)
        let maggie = Simpsons(nameInit: "Maggie Simpson", jobInit: "Baby", ageInit: 1, imageInit: UIImage(named: "maggie")!)

        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)

    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
        
    }
    
}

