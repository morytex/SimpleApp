//
//  PostRepository.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Entities
import NetworkCore
import RepositoryProtocol

public class PostRepository: PostRepositoryProtocol {
    private let postAPI: PostAPIProtocol

    public init(postAPI: PostAPIProtocol) {
        self.postAPI = postAPI
    }

    public func getPosts() async -> [Post] {
        do {
            let apiPosts = try await postAPI.getPosts()
            return apiPosts.map { $0.toPost() }
        } catch {
            // TODO: - Handle error in a better way. Using a log mechanism instead of print.
            print("Error getting posts: \(error.localizedDescription)")
        }
        return []
    }
}

extension APIPost {
    func toPost() -> Post {
        Post(id: self.id, title: self.title, points: self.points, url: self.url)
    }
}
