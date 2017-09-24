//
//  AddEditPostViewController.swift
//  InstaCore
//
//  Created by Vadym Mitin on 24/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

class AddEditPostViewController: UIViewController {
    var output: AddEditPostViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }
}

// MARK: - AddEditPostViewInput
extension AddEditPostViewController: AddEditPostViewInput {
    func setupInitialState() {}
}
