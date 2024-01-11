//
//  PostAPIProtocol.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Foundation

public protocol PostAPIProtocol {
    func getPosts() async throws -> [APIPost]
}
