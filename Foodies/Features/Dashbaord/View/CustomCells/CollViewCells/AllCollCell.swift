//
//  AllCollCell.swift
//  Foodies
//
//  Created by User on 28/06/25.
//

import UIKit

class AllCollCell: UICollectionViewCell {
    
    
    @IBOutlet weak var containerViewOfAllButton: UIView! {
        didSet {
            containerViewOfAllButton.layer.cornerRadius = 20
            containerViewOfAllButton.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var  containerViewFire: UIView! {
        didSet {
            containerViewFire.layer.cornerRadius = containerViewFire.frame.height / 2
            containerViewFire.layer.masksToBounds = true
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

}
