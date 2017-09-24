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
    
    fileprivate var posts: [PostViewDataProtocol] = []
}

// MARK: - PostsViewOutput
extension PostsPresenter: PostsViewOutput {
    func viewIsReady() {
        
        for index in 0...10{
            let postViewData = PostViewData(index)
            posts.append(postViewData)
        }
        
        view.setupInitialState()
    }
    
    func addPostButtonDidTouch(){
        print("addPostButtonDidTouch")
    }
}

// MARK: - PostsTableDataSourceOutput
extension PostsPresenter: PostsTableDataSourceOutput{
    
    func postsCount() -> Int{
        return posts.count
    }
    
    func post(at index: Int) -> PostViewDataProtocol?{
        return posts[index]
    }
    
    func editPost(at index: Int){
        print("editPost at \(index)")
    }
    
    func deletePost(at index: Int){
        print("deletePost at \(index)")
    }
}

// MARK: - PostsInteractorOutput
extension PostsPresenter: PostsInteractorOutput {}

// MARK: - PostsModuleInput
extension PostsPresenter: PostsModuleInput {}
