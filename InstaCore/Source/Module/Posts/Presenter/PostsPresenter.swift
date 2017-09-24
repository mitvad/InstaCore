//
//  PostsPresenter.swift
//  InstaCore
//
//  Created by Vadym Mitin on 24/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import Foundation

class PostsPresenter {
	weak var moduleOutput: PostsModuleOutput?

	var router: PostsRouterInput!

	var interactor: PostsInteractorInput!
	
    weak var view: PostsViewInput!
}

// MARK: PostsViewOutput
extension PostsPresenter: PostsViewOutput {
    func viewIsReady() {}
}

// MARK: PostsInteractorOutput
extension PostsPresenter: PostsInteractorOutput {}

// MARK: PostsModuleInput
extension PostsPresenter: PostsModuleInput {}