//
//  NSObject+ClassName.swift
//  Suits In
//
//  Created by Vadym on 168//17.
//  Copyright © 2017 Artjoker. All rights reserved.
//

import Foundation

extension NSObject {
    
    class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
