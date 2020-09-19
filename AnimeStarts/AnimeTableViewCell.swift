//
//  AnimeTableViewCell.swift
//  AnimeStarts
//
//  Created by Talmage Hassell on 9/18/20.
//  Copyright © 2020 Talmage Hassell. All rights reserved.
//

import UIKit

class AnimeTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//OUTLETSSSSS
    
    @IBOutlet weak var listTitleOutlet: UILabel!
    @IBOutlet weak var listGenreOutlet: UILabel!
    @IBOutlet weak var listYearOutlet: UILabel!
    @IBOutlet weak var listImageOutlet: UIImageView!
    
    
    
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
