//
//  GetPostsUseCaseProtocol.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Entities

public protocol GetPostsUseCaseProtocol {
    func getPosts() async -> [Post]
}
