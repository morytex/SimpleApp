//
//  Post.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

public struct Post: Identifiable {
    public let id: String
    public let title: String
    public let points: Int
    public let url: String?

    public init(id: String, title: String, points: Int, url: String?) {
        self.id = id
        self.title = title
        self.points = points
        self.url = url
    }
}
