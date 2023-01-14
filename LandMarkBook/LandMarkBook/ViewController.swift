//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Türker Berk Topçu on 3.01.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    
    class LandMark{
        var image: UIImage
        var name: String
        
        init(image: UIImage, name: String) {
            self.image = image
            self.name = name
        }
        
    }
    
    
    var LMobjects = [LandMark]()
    var chosenLMName: String = ""
    var chosenLMImage: UIImage = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        var colessium = LandMark(image: UIImage(named: "Colosseo_2020")!, name: "Colessium")
        var eifel = LandMark(image: UIImage(named: "eifel")!, name: "Eifel Tower")
        var kremlin = LandMark(image: UIImage(named: "Kremlin")!, name: "Kremlin")
        var greatWall = LandMark(image: UIImage(named: "Great-Wall")!, name: "Great Wall")
        var stonhenge = LandMark(image: UIImage(named: "Stonehenge")!, name: "Stonhenge")
        
        LMobjects.append(colessium)
        LMobjects.append(eifel)
        LMobjects.append(kremlin)
        LMobjects.append(greatWall)
        LMobjects.append(stonhenge)
        
       
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LMobjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = LMobjects[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLMName = LMobjects[indexPath.row].name
        chosenLMImage = LMobjects[indexPath.row].image
        performSegue(withIdentifier: "segueOne", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueOne"){
            let destination = segue.destination as! DetailsViewController
            destination.selectedLMName = chosenLMName
            destination.selectedLMImage = chosenLMImage
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            LMobjects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.top)
        }
    }

}

