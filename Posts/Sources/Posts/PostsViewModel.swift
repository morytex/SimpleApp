//
//  PostsViewModel.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Foundation
import Entities
import UseCaseProtocol

@MainActor
public final class PostsViewModel: ObservableObject {
    private let getPostsUseCase: GetPostsUseCaseProtocol

    @Published public private(set) var posts: [Post] = []

    public init(getPostsUseCase: GetPostsUseCaseProtocol) {
        self.getPostsUseCase = getPostsUseCase
    }

    func fetchPosts() {
        Task {
            self.posts = await self.getPostsUseCase.getPosts()
        }
    }
}
