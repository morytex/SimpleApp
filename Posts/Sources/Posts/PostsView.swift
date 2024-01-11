//
//  PostsView.swift
//  SimpleApp
//
//  Created by Alessandro Moryta Suemasu on 08/01/24.
//

import PostDetail
import SwiftUI

public struct PostsView: View {
    @ObservedObject private var viewModel: PostsViewModel

    public init(viewModel: PostsViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        NavigationStack {
            List(viewModel.posts) { post in
                NavigationLink {
                    PostDetailView(url: post.url)
                } label: {
                    HStack(content: {
                        Text(String(post.points))
                        Text(post.title)
                    })
                }
            }
            .navigationTitle("NEWS")
        }
        .onAppear(perform: {
            viewModel.fetchPosts()
        })
    }
}

#if DEBUG
import DomainTestHelpers

#Preview {
    PostsView(viewModel: PostsViewModel(getPostsUseCase: MockGetPostsUseCase()))
}
#endif
