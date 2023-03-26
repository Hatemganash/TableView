//
//  NumbersVC.swift
//  TableView
//
//  Created by Hatem on 18/03/2023.
//

import UIKit

class NumbersVC: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    var arrNumbers = [String]()
    let refreshcontrol = UIRefreshControl()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self
        refreshcontrol.tintColor = UIColor.lightGray
        refreshcontrol.addTarget(self, action:#selector(getdata) , for: .valueChanged)
        tableview.addSubview(refreshcontrol)
    }
    
    @objc func getdata(){
        arrNumbers.append("Value \(arrNumbers.count)")
        refreshcontrol.endRefreshing()
        tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNumbers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumbersCell", for: indexPath)
        cell.textLabel?.text = arrNumbers[indexPath.row]
        return cell
    }
    



}
