//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Harun Selçuk Çetin on 27.12.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]();
    var landmarkImages: [UIImage] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        landmarkNames.append("eifel");
        landmarkNames.append("piramit");
        landmarkNames.append("great wall");
        landmarkNames.append("ayasofya");
        
        
        landmarkImages.append(UIImage(named: "eifel")!);
        landmarkImages.append(UIImage(named: "piramit")!);
        landmarkImages.append(UIImage(named: "greatwall")!);
        landmarkImages.append(UIImage(named: "ayasofya")!);
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        
        var content = cell.defaultContentConfiguration()
        content.text =  "\(indexPath.row+1). \(landmarkNames[indexPath.row])"
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let detailsVC = segue.destination as! DetailsVC;
            detailsVC.selectedLandmarkName = landmarkNames[tableView.indexPathForSelectedRow!.row]
            detailsVC.selectedImage = landmarkImages[tableView.indexPathForSelectedRow!.row]
           
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row);
            self.landmarkImages.remove(at: indexPath.row);
            tableView.deleteRows(at: [indexPath], with: .fade);
        }
    }
    
}

