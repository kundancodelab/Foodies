//
//  UIViewController+extenstion.swift
//  Foodies
//
//  Created by User on 28/06/25.
//

import Foundation

import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
    
    static func dashboard() -> Self {
        let storyboard = UIStoryboard(name: "Dashbaord", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
    
    func animateButtonTap(_ button: UIButton) {
        UIView.animate(withDuration: 0.1,
                       animations: {
            button.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        },
                       completion: { _ in
            UIView.animate(withDuration: 0.1) {
                button.transform = CGAffineTransform.identity
            }
        })
    }

}

