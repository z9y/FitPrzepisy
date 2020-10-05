//
//  RecipeCell.swift
//  FitPrzepisy 2
//
//  Created by zari on 26/05/2020.
//  Copyright © 2020 zari. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    
    @IBOutlet weak var recipeCellImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var vegeImage: UIImageView!
    @IBOutlet weak var lactoseImage: UIImageView!
    @IBOutlet weak var glutenImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func favoriteButton(_ sender: UIButton) {
        //let favorite = 
    }
}
