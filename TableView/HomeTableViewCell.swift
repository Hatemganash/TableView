 //
//  HomeTableViewCell.swift
//  TableView
//
//  Created by Hatem on 15/03/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var imgfrute: UIImageView!
    
    @IBOutlet weak var lblfrutedescription: UILabel!
    @IBOutlet weak var lblfruteprice: UILabel!
    @IBOutlet weak var lblfrutename: UILabel!
    
    @IBOutlet weak var btnaddtofav: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupcell (photo : UIImage , name : String , price : Double , description : String ){
        imgfrute.image = photo
        lblfrutename.text = name
        lblfruteprice.text = "\(price) Egp"
        lblfrutedescription.text = description
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
