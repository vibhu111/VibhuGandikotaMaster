//
//  interestsTableViewCell.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/25/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit

class interestsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var AppName: UILabel!
    @IBOutlet weak var imageViewW: UIImageView!

    @IBOutlet weak var appCreater: UILabel!
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        AppName.font = UIFont(name: "Avenir Next", size: 25)
        appCreater.font = UIFont(name: "Avenir Next", size: 17)

        // Configure the view for the selected state
    }

}
