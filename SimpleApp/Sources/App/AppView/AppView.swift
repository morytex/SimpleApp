//
//  ContentView.swift
//  SimpleApp
//
//  Created by Alessandro Moryta Suemasu on 08/01/24.
//

import Entities
import Factory
import Posts
import SwiftUI

struct AppView: View {
    var body: some View {
        PostsView(viewModel: Container.postsViewModel())
    }
}
