//
//  MainViewController.swift
//  InstaCore
//
//  Created by Vadym Mitin on 17/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var output: MainViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }
}

// MARK: MainViewInput
extension MainViewController: MainViewInput {
    func setupInitialState() {}
}
