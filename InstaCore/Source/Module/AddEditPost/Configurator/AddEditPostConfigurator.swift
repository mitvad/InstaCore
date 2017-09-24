//
//  AddEditPostConfigurator.swift
//  InstaCore
//
//  Created by Vadym Mitin on 24/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

class AddEditPostModuleConfigurator {
    
    @discardableResult
    func configureModule<UIViewController>(for viewInput: UIViewController, output moduleOutput: AddEditPostModuleOutput? = nil) -> AddEditPostModuleInput? {
        if let viewController = viewInput as? AddEditPostViewController {
            return configure(viewController: viewController, output: moduleOutput)
        }

        return nil
    }

    private func configure(viewController: AddEditPostViewController, output moduleOutput: AddEditPostModuleOutput?) -> AddEditPostModuleInput {
        let router = AddEditPostRouter()
        router.viewController = viewController

        let presenter = AddEditPostPresenter()
        presenter.view = viewController
        presenter.router = router
        presenter.moduleOutput = moduleOutput

        let moduleInput = presenter

        let interactor = AddEditPostInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter

        return moduleInput
    }
}
