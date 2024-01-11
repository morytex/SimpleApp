//
//  PostAPI.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Foundation

public class PostAPI: PostAPIProtocol {
    private let urlSession: URLSession
    private let baseURL = "https://hn.algolia.com/api/v1"

    public init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }

    public func getPosts() async throws -> [APIPost] {
        guard let url = URL(string: baseURL + "/search?tags=front_page") else {
            // TODO: - Handle inexistent url in a better way. Create a new exception and throws it.
            throw NSError(domain: "SimpleApp.Data", code: 2)
        }

        let (data, _) = try await urlSession.data(from: url)
        let decoder = JSONDecoder()

        let response = try decoder.decode(APIGetPostsResponse.self, from: data)
        return response.hits
    }
}
