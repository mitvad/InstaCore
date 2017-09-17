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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

// MARK: MainViewInput
extension MainViewController: MainViewInput {
    func setupInitialState() {}
}
