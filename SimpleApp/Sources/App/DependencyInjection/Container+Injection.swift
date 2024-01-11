//
//  Container+Injection.swift
//  SimpleApp
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Foundation
import Factory
import NetworkCore
import Posts
import Repositories
import RepositoryProtocol
import UseCaseProtocol
import UseCases

@MainActor
extension Container {
    // Network
    static var postAPI: Factory<PostAPIProtocol> {
        Factory(shared) { PostAPI() }
            .cached
    }

    // ViewModels
    static let postsViewModel = Factory(shared) { PostsViewModel(getPostsUseCase: getPostsUseCase.callAsFunction()) }
        .cached

    // Repositories
    static var postRepository: Factory<PostRepositoryProtocol> {
        Factory(shared) { PostRepository(postAPI: postAPI.callAsFunction()) }
    }

    // UseCases
    static var getPostsUseCase: Factory<GetPostsUseCaseProtocol> {
        Factory(shared) { GetPostsUseCase(repository: postRepository.callAsFunction()) }
    }
}
