//
//  ViewController.swift
//  TableView
//
//  Created by Hatem on 15/03/2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
var arrname = ["Hatem","Ashraf","Mahmoud","Ganash"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrname[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrname[indexPath.row])
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
       
    }


}

