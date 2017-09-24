//
//  PostsConfigurator.swift
//  InstaCore
//
//  Created by Vadym Mitin on 24/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

class PostsModuleConfigurator {
    
    @discardableResult
    func configureModule<UIViewController>(for viewInput: UIViewController, output moduleOutput: PostsModuleOutput? = nil) -> PostsModuleInput? {
        if let viewController = viewInput as? PostsViewController {
            return configure(viewController: viewController, output: moduleOutput)
        }

        return nil
    }

    private func configure(viewController: PostsViewController, output moduleOutput: PostsModuleOutput?) -> PostsModuleInput {
        let router = PostsRouter()
        router.viewController = viewController

        let presenter = PostsPresenter()
        presenter.view = viewController
        presenter.router = router
        presenter.moduleOutput = moduleOutput

        let moduleInput = presenter

        let interactor = PostsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        viewController.dataSource = PostsTableDataSource(output: presenter)
        
        return moduleInput
    }
}
