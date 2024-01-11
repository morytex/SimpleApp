//
//  WebView.swift
//
//
//  Created by Alessandro Moryta Suemasu on 11/01/24.
//

import SwiftUI
import WebKit

public struct WebView: UIViewRepresentable {
    private let url: URL

    public init(url: URL) {
        self.url = url
    }

    public func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    public func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
