//
//  PostRepositoryProtocol.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Entities

public protocol PostRepositoryProtocol {
    func getPosts() async -> [Post]
}
