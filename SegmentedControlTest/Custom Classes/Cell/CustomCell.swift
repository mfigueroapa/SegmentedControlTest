//
//  CustomCell.swift
//  SegmentedControlTest
//
//  Created by Mauricio Figueroa on 4/8/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell(text: String, emoji: String) {
        self.titleLabel.text = text
        self.emojiLabel.text = emoji
        
        self.titleLabel.textColor = UIColor.white
        self.contentView.backgroundColor = UIColor.darkGray
    }
    
}
