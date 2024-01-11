//
//  APIPost.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Foundation

public struct APIPost: Decodable, Identifiable {
    public let id: String
    public let title: String
    public let points: Int
    public let url: String?
}

extension APIPost {
    enum CodingKeys: String, CodingKey {
        case id = "objectID"
        case points, title,url
    }
}
