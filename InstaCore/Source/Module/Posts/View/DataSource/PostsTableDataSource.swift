//
//  PostsTableDataSource.swift
//  InstaCore
//
//  Created by Vadym on 249//17.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

class PostsTableDataSource: NSObject, PostsTableDataSourceProtocol{
    
    fileprivate var output: PostsTableDataSourceOutput
    
    init(output: PostsTableDataSourceOutput) {
        self.output = output
    }
    
    func setup(_ tableView: UITableView){
        tableView.register(UINib(nibName: PostTableViewCell.className, bundle: nil), forCellReuseIdentifier: PostTableViewCell.className)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.allowsSelection = false
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 500
    }
}

extension PostsTableDataSource: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.postsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.className) as! PostTableViewCell
        
        if let postViewData = output.post(at: indexPath.row){
            cell.setup(data: postViewData)
            
            cell.onEditButtonDidTouch = { [weak self] in
                self?.output.editPost(at: indexPath.row)
            }
            
            cell.onDeleteButtonDidTouch = { [weak self] in
                self?.output.deletePost(at: indexPath.row)
            }
        }
        
        return cell
    }
}

extension PostsTableDataSource: UITableViewDelegate{
    
}
