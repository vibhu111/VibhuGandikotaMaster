//
//  TableViewCell.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/24/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var imageViewW: UIImageView!

    @IBOutlet weak var TextView: UITextView!
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
TextView.font = UIFont(name: "Avenir Next", size: 18)
        // Configure the view for the selected state
        
        
        
    }

}
