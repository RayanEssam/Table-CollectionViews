//
//  customTableViewCell.swift
//  Table&CollectionViews
//
//  Created by Rayan Taj on 28/10/2021.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var descLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
