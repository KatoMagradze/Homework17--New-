//
//  ChatsCell.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ChatsCell: UITableViewCell {
    
    var finalMessages = [NewMessage]()

    @IBOutlet weak var chatImageView: UIImageView!
    
    @IBOutlet weak var chatNameLabel: UILabel!
    
    @IBOutlet weak var chatMessageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
