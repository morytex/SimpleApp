//
//  PostDetailView.swift
//
//
//  Created by Alessandro Moryta Suemasu on 11/01/24.
//

import CommonViews
import Entities
import SwiftUI

public struct PostDetailView: View {
    private let url: String?

    public init(url: String?) {
        self.url = url
    }

    public var body: some View {
        if let urlString = url, let safeUrl = URL(string: urlString) {
            WebView(url: safeUrl)
        } else {
            EmptyView()
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(url: "https://google.com")
    }
}
