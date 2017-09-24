//
//  PostsTableDataSourceOutput.swift
//  InstaCore
//
//  Created by Vadym on 249//17.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import Foundation

protocol PostsTableDataSourceOutput {
    
    func postsCount() -> Int
    func post(at index: Int) -> PostViewDataProtocol?
    
    func editPost(at index: Int)
    func deletePost(at index: Int)
}
