//
//  ContactsVC.swift
//  TableView
//
//  Created by Hatem on 17/03/2023.
//

import UIKit

class ContactsVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    var arrSections = ["A","M","S"]
    var arrRows = [["Ali","Ahmed","Asem"],["Mahmoud"],["Samy","Shams"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRows[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
        cell.textLabel?.text = arrRows[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrSections[section]
    }
    

}
