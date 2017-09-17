//
//  UIView+NibLoading.swift
//  Suits In
//
//  Created by Savchenko Aleksandr on 12/07/2017.
//  Copyright © 2017 Artjoker. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    class func fromXib() -> Self{
        let nib = UINib(nibName: className, bundle: nil)
        
        return instantiateViewFromUINib(nib)
    }
    
    private class func instantiateViewFromUINib<T: UIView>(_ nib: UINib) -> T {
        return nib.instantiate(withOwner: nil, options: nil)[0] as! T
    }
}
