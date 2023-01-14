//
//  FavoriteModel.swift
//  Favorite-Book
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import Foundation


//struct: Identifiable yaptik cunku Listede gosterirken id'si filan ek olarak sormucak.
//egzersiz E22-001'de hatirlarsan id: \.self yapiyoduk. Artik ona gerek kalmicak.

struct FavoriteModel: Identifiable {
    var id = UUID()
    var title: String
    var elements: [FavoriteElements]
}


struct FavoriteElements: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
}

//MARK: - Bands

let metallica = FavoriteElements(name: "Metallica", imageName: "metallica", description: "No 1 music band")
let megadeth = FavoriteElements(name: "Megadeth", imageName: "megadeth", description: "No 2 music band")
let ironMaiden = FavoriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 music band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica, megadeth, ironMaiden])

//MARK: - Movies

let pulpFiction = FavoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 movie")
let theDarkNight = FavoriteElements(name: "The Dark Night", imageName: "thedarkknight", description: "No 2 movie")
let killBill = FavoriteElements(name: "Kill Bill", imageName: "killbill", description: "No 3 movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpFiction, theDarkNight, killBill])


//MARK: - Favorites

let myFavorites = [favoriteBands, favoriteMovies]
