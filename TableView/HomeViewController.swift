//
//  HomeViewController.swift
//  TableView
//
//  Created by Hatem on 15/03/2023.
//

import UIKit

class HomeViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
    var arrFruits = [Fruite]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        arrFruits.append(Fruite.init(name: "orange", price: 12, description: "This is pop fruite to eat and healhy", photo: UIImage(named: "img_orange")!))
        arrFruits.append(Fruite.init(name: "apple", price: 10, description: "This is pop fruite to eat and healhy", photo: UIImage(named: "img_apple")!))
        arrFruits.append(Fruite.init(name: "banana", price: 20, description: "This is pop fruite to eat and healhy", photo: UIImage(named: "img_banana")!))
        arrFruits.append(Fruite.init(name: "Lemon", price: 22, description: "This is pop fruite to eat and healhy", photo: UIImage(named: "img_lemon")!))
        arrFruits.append(Fruite.init(name: "Mango", price: 7, description: "This is pop fruite to eat and healhy", photo: UIImage(named: "img_mango")!))
        arrFruits.append(Fruite.init(name: "Papaya", price: 15, description: "This is pop fruite to eat and healhy", photo: UIImage(named: "img_papaya")!))
  
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFruits.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeTableViewCell
        let data = arrFruits[indexPath.row]
        cell.setupcell(photo: data.photo, name: data.name, price: data.price , description: data.description)
        cell.btnaddtofav.tag = indexPath.row
        cell.btnaddtofav.addTarget(self, action: #selector(addtofav(sender: )), for: .touchUpInside)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index = \(indexPath.row)")
    }
    @objc
    func addtofav(sender : UIButton){
        print("button index = \(sender.tag)")
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
    }
}
struct Fruite {
    let name : String
    let price : Double
    let description : String
    let photo : UIImage
}

