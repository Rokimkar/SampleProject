//
//  MenuHeaderTableViewCell.swift
//  IASTips
//
//  Created by S@nchit on 12/21/16.
//  Copyright © 2016 S@nchit. All rights reserved.
//

import UIKit

class MenuHeaderTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor =  UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: false)

        // Configure the view for the selected state
    }
    
}
