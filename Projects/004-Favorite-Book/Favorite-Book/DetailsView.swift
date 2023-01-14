//
//  DetailsView.swift
//  Favorite-Book
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement: FavoriteElements
    
    var body: some View {
        VStack {
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
                .bold(true)
                .padding()
            Text(chosenFavoriteElement.description)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: metallica)
    }
}
