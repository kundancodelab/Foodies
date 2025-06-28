//
//  RestaurantCell.swift
//  Foodies
//
//  Created by User on 28/06/25.
//

import UIKit

class RestaurantCell: UITableViewCell {
    @IBOutlet weak var restaurantImg: UIImageView! {
        didSet{
            restaurantImg.layer.cornerRadius =  16
            restaurantImg.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var seeAllUpperHeadingsection: UIStackView!
    
    @IBOutlet weak var topConstraints: NSLayoutConstraint!
    
    @IBOutlet weak var uppoerStackHeight: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      //  setupCollectionView(collectionView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
 
}

