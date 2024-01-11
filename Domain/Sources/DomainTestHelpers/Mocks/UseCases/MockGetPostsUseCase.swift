//
//  MockGetPostsUseCase.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Entities
import UseCaseProtocol

public class MockGetPostsUseCase: GetPostsUseCaseProtocol {
    public init() { }

    public func getPosts() async -> [Post] {
        [
            Post(id: "1", title: "Hello", points: 0, url: ""),
            Post(id: "2", title: "Bonjour", points: 1, url: ""),
            Post(id: "3", title: "Halo", points: 2, url: "")
        ]
    }
}
