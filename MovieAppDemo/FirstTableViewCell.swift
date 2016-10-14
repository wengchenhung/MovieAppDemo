//
//  FirstTableViewCell.swift
//  MovieAppDemo
//
//  Created by 翁誠宏 on 2016/10/12.
//  Copyright © 2016年 Alpha Camp. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieType: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
