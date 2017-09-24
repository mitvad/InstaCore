//
//  AddEditPostPresenter.swift
//  InstaCore
//
//  Created by Vadym Mitin on 24/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import Foundation

class AddEditPostPresenter {
	weak var moduleOutput: AddEditPostModuleOutput?

	var router: AddEditPostRouterInput!

	var interactor: AddEditPostInteractorInput!
	
    weak var view: AddEditPostViewInput!
}

// MARK: - AddEditPostViewOutput
extension AddEditPostPresenter: AddEditPostViewOutput {
    func viewIsReady() {}
}

// MARK: - AddEditPostInteractorOutput
extension AddEditPostPresenter: AddEditPostInteractorOutput {}

// MARK: - AddEditPostModuleInput
extension AddEditPostPresenter: AddEditPostModuleInput {}