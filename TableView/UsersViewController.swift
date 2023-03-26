//
//  UsersViewController.swift
//  TableView
//
//  Created by Hatem on 17/03/2023.
//

import UIKit

class UsersViewController: UIViewController , UITableViewDelegate , UITableViewDataSource  {
  
    

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var txtusername: UITextField!
   var arrNames = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnadd(_ sender: Any) {
        if let text = txtusername.text {
            arrNames.append(text)
            let indexpath  = IndexPath(row: arrNames.count-1, section: 0 )
            tableview.beginUpdates()
            tableview.insertRows(at: [indexpath] , with: .automatic)
            tableview.endUpdates()
            txtusername.text=""
        }
    }
    
    @IBAction func btnEdit(_ sender: Any) {
        
        tableview.isEditing = !tableview.isEditing
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = arrNames[indexPath.row]

        return cell
        
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrNames.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteaction = UIContextualAction(style: .destructive, title: "") { action, view, completionhandeler in
            self.arrNames.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            completionhandeler(true)
            
        }
        let favaction = UIContextualAction(style: .normal, title: "Fav") { _ , _ , _ in
            print("user added to fav list")
        }
        deleteaction.image = UIImage(systemName: "trash")
        favaction.image = UIImage(systemName: "heart")
        favaction.backgroundColor = UIColor.blue
        return UISwipeActionsConfiguration(actions: [deleteaction,favaction])
    }
  
    
    
    }
    
