//
//  UIViewController+Storyboard.swift
//  Suits In
//
//  Created by Vadym on 168//17.
//  Copyright © 2017 Artjoker. All rights reserved.
//

import UIKit

extension UIViewController{
    
    private class func instantiateViewControllerFromStoryboard<T: UIViewController>(_ storyboard: UIStoryboard, identifier: String) -> T {
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
    
    class func fromStoryboard() -> Self{
        let storyboard = UIStoryboard(name: className, bundle: nil)
        
        return instantiateViewControllerFromStoryboard(storyboard, identifier: className)
    }
}
