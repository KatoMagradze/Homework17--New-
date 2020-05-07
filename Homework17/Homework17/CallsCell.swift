//
//  CallsCell.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class CallsCell: UITableViewCell {

    @IBOutlet weak var callNumberLabel: UILabel!
    
    @IBOutlet weak var callCountryLabel: UILabel!
    
    @IBOutlet weak var callWeekLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
