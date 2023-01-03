//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Türker Berk Topçu on 3.01.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = "Test"
        cell.contentConfiguration = content
        return cell
    }
    

}

