//
//  CitiesTableViewCell.swift
//  TableView
//
//  Created by Hatem on 18/03/2023.
//

import UIKit

class CitiesTableViewCell: UITableViewCell {

    @IBOutlet weak var imgCityPhoto: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
