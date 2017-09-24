//
//  PostViewData.swift
//  InstaCore
//
//  Created by Vadym on 249//17.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import Foundation

protocol PostViewDataProtocol {
    
    var imageURL: URL? { get }
    var description: String { get }
    var tags: String { get }
    var createdAt: String { get }
    var updatedAt: String { get }
}

struct PostViewData: PostViewDataProtocol{
    
    var imageURL: URL?
    var description: String
    var tags: String
    var createdAt: String
    var updatedAt: String
    
    init(_ id: Int) {
        let urlString = "http://placehold.it/763x763&text=Post%20Image%20" + String(id)
        self.imageURL = URL(string: urlString)
        self.description = "\(id) Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus bibendum augue ipsum. Pellentesque hendrerit, ante nec sagittis fermentum, ex neque consequat orci, at commodo ex arcu quis ex. Nullam porta luctus enim, ultricies condimentum enim fermentum id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eleifend, diam quis aliquam luctus, velit nisl finibus tellus, vitae volutpat orci lacus eget magna. Nullam vel erat at quam lacinia tincidunt."
        self.tags = "#tag1 #tag2 #tag3"
        
        let date = Date()
        let format = DateFormatter()
        format.dateStyle = .medium
        format.timeStyle = .medium
        
        self.createdAt = format.string(from: date)
        self.updatedAt = format.string(from: date)
    }
}
