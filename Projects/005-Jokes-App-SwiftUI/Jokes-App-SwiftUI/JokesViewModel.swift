//
//  JokesViewModel.swift
//  Jokes-App-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import Foundation
import Alamofire

/*
 ObservableObject: bu siniftaki degiskenleri publish edeceksek, yani baska yerde kullanilacaksa, view'da gozukecekse, bu degisiklikler otomatik olarak view'a aktarilacak. ve view'da bastan olusturulacak diye yazdik.
 */

class JokesViewModel: ObservableObject {
    
    @Published var jokes = [Welcome]()
    
    let url = "https://v2.jokeapi.dev/joke/Any?type=single"
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        //URLSession ile yapmak yerine bu projede Alamofire kullanalim.
        AF
            .request(url)
            .responseDecodable(of: Welcome.self) { response in
                switch response.result {
                case .success(let data):
                    self.jokes.append(data)
                    
                case .failure(let error):
                    print("error", error.localizedDescription)
                }
            }
    }
}



//https://jokeapi.dev

