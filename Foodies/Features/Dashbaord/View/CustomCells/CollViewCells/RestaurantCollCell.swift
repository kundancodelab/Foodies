//
//  RestaurantCollCell.swift
//  Foodies
//
//  Created by User on 28/06/25.
//

import UIKit

class RestaurantCollCell: UICollectionViewCell {
    @IBOutlet weak var restaurantImg: UIImageView! {
        didSet{
            restaurantImg.layer.cornerRadius =  16
            restaurantImg.layer.masksToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
