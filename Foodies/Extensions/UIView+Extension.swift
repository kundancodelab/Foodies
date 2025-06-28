//
//  UIView+Extension.swift
//  Foodies
//
//  Created by User on 28/06/25.
//



import Foundation
import UIKit
extension UIView {
    func animateWithFadeAndAction(duration: TimeInterval = 0.1,
                                      fadeAlpha: CGFloat = 0.5,
                                      action: @escaping () -> Void) {
           let originalAlpha = self.alpha
           
           UIView.animate(withDuration: duration, animations: {
               self.alpha = fadeAlpha
           }) { _ in
               UIView.animate(withDuration: duration, animations: {
                   self.alpha = originalAlpha
               }) { _ in
                   action()
               }
           }
       }

}
