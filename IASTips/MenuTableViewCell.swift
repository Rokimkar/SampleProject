//
//  MenuTableViewCell.swift
//  IASTips
//
//  Created by S@nchit on 12/21/16.
//  Copyright © 2016 S@nchit. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor =  UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        // Initialization code
    }
    
    func bindData(content : String) -> Void {
        self.contentLabel.text = content
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: true)

        // Configure the view for the selected state
    }
    
}
