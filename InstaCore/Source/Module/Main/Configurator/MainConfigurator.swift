//
//  MainConfigurator.swift
//  InstaCore
//
//  Created by Vadym Mitin on 17/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

class MainModuleConfigurator {
    
    @discardableResult
    func configureModule<UIViewController>(for viewInput: UIViewController, output moduleOutput: MainModuleOutput? = nil) -> MainModuleInput? {
        if let viewController = viewInput as? MainViewController {
            return configure(viewController: viewController, output: moduleOutput)
        }

        return nil
    }

    private func configure(viewController: MainViewController, output moduleOutput: MainModuleOutput?) -> MainModuleInput {
        let router = MainRouter()
        router.viewController = viewController

        let presenter = MainPresenter()
        presenter.view = viewController
        presenter.router = router
        presenter.moduleOutput = moduleOutput

        let moduleInput = presenter

        let interactor = MainInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter

        return moduleInput
    }
}
