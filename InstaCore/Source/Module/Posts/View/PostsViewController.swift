//
//  PostsViewController.swift
//  InstaCore
//
//  Created by Vadym Mitin on 24/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController {
    var output: PostsViewOutput!
    
    var dataSource: PostsTableDataSourceProtocol!
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Posts".localized
        
        output.viewIsReady()
    }
    
    @IBAction func addButtonDidTouch(){
        output.addPostButtonDidTouch()
    }
}

// MARK: PostsViewInput
extension PostsViewController: PostsViewInput {
    func setupInitialState() {
        dataSource.setup(tableView)
        
        tableView.reloadData()
    }
}
