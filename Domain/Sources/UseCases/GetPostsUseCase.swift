//
//  GetPostsUseCase.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Entities
import UseCaseProtocol
import RepositoryProtocol

public class GetPostsUseCase: GetPostsUseCaseProtocol {
    private let repository: PostRepositoryProtocol

    public init(repository: PostRepositoryProtocol) {
        self.repository = repository
    }

    public func getPosts() async -> [Post] {
        let posts = await repository.getPosts()
        return posts
    }
}
