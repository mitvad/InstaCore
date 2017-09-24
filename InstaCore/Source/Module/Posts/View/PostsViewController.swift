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

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }
}

// MARK: PostsViewInput
extension PostsViewController: PostsViewInput {
    func setupInitialState() {}
}
