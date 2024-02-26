//
//  ShapeNameTableViewCell.swift
//  Calculate It
//
//  Created by Simon Wilson on 26/02/2024.
//

import UIKit

class ShapeNameTableViewCell: UITableViewCell {

    @IBOutlet weak var shapeLabel: UILabel!
    
    @IBOutlet weak var shapeIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
