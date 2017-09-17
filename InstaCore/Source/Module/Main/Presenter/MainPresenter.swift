//
//  MainPresenter.swift
//  InstaCore
//
//  Created by Vadym Mitin on 17/09/2017.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

class MainPresenter {
	weak var moduleOutput: MainModuleOutput?

	var router: MainRouterInput!

	var interactor: MainInteractorInput!
	
    weak var view: MainViewInput!
}

// MARK: MainModuleInput
extension MainPresenter: MainModuleInput {}

// MARK: MainViewOutput
extension MainPresenter: MainViewOutput {
    func viewIsReady() {}
}

// MARK: MainInteractorOutput
extension MainPresenter: MainInteractorOutput {}
