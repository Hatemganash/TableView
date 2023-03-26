//
//  countryVC.swift
//  TableView
//
//  Created by Hatem on 18/03/2023.
//

import UIKit

class countryVC: UIViewController , UITableViewDelegate , UITableViewDataSource{
   
    var arrCountries = ["Oman", "Saudi","Dubai","Egypt","Iraq"]

    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        tableview.delegate = self
        tableview.dataSource = self
        
        arrCountries.removeAll()
        
        if arrCountries.count == 0 {
            tableview.isHidden = true
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        cell.textLabel?.text = arrCountries[indexPath.row]
        return cell
    }
    
}
