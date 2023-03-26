//
//  CitiesViewController.swift
//  TableView
//
//  Created by Hatem on 18/03/2023.
//

import UIKit

class CitiesViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    var arrCities = [UIImage(named: "img_riyadh")!,UIImage(named: "img_amman")!,UIImage(named: "img_cairo")!,UIImage(named: "img_dubai")!]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CitiesTableViewCell
        cell.imgCityPhoto.image = arrCities[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let photo = arrCities [indexPath.row]
        let photowidthratio = photo.size.width / photo.size.height
        let heightofcell = tableView.frame.width/photowidthratio
        return heightofcell
    }


}
