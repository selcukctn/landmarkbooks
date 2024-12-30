//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Harun Selçuk Çetin on 30.12.2024.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    
    @IBOutlet weak var landmarkImage: UIImageView!
    
    var selectedLandmarkName = "";
    var selectedImage = UIImage();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        landmarkImage.image = selectedImage;
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
