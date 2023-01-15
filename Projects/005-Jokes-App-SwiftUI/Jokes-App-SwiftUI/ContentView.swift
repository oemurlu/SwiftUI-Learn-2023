//
//  ContentView.swift
//  Jokes-App-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        
        NavigationStack {
            List(jokesVM.jokes, rowContent: { elements in
                Text(elements.joke)
            })
            .navigationTitle("Random Jokes 😂")
            .toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            }
            
        }
    }

    func addJoke() {
        jokesVM.getJokes()
    }
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

