//
//  ContentView.swift
//  Favorite-Book
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // NavigationLink kullanmak icin NavigationStack icine almaliyiz her seyi.
        // yani storyboard'da embed in => navigation controller ekliyoduk ya ondan iste.
        
        NavigationStack {
            List {
                ForEach(myFavorites) { favorite in
                    Section {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                        }
                    } header: {
                        Text(favorite.title)
                    }
                }
            }
            .navigationTitle("Favorite Book")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
