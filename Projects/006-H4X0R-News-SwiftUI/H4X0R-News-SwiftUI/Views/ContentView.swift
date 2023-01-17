//
//  ContentView.swift
//  H4X0R-News-SwiftUI
//
//  Created by Osman Emre Ömürlü on 12.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        //.onAppear demek viewDidLoad gibi bsi demek
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


