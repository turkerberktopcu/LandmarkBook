//
//  DetailsViewController.swift
//  LandMarkBook
//
//  Created by Türker Berk Topçu on 3.01.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var landMarkLabell: UILabel!
    
    @IBOutlet weak var landMarkImageView: UIImageView!
  
    var selectedLMName: String = ""
    var selectedLMImage: UIImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        landMarkLabell.text = selectedLMName
        landMarkImageView.image = selectedLMImage
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
