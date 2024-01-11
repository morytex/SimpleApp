//
//  APIGetPostsResponse.swift
//
//
//  Created by Alessandro Moryta Suemasu on 10/01/24.
//

import Foundation

struct APIGetPostsResponse: Decodable {
    let hits: [APIPost]
}
