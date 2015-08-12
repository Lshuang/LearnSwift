//
//  WorkOutCell.swift
//  WorkOutApp
//
//  Created by Shawn Li on 15/8/12.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

import UIKit

class WorkOutCell: UITableViewCell {
    @IBOutlet weak var textCellLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
