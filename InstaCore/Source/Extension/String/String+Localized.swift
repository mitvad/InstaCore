//
//  String+Localized.swift
//  InstaCore
//
//  Created by Vadym on 249//17.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import Foundation

extension String{
    
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
    func localized(withComment comment:String) -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: comment)
    }
}
