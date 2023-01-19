//
//  UserViewModel.swift
//  Interchangable-Network-SwiftUI
//
//  Created by Osman Emre Ömürlü on 17.12.2022.
//

import Foundation



// UserViewModel'i struct olusturduk ilk asagida. Simdi UserListViewModel'i niye class olusturduk diye merak edersen;
// class'i ObservableObject'tan inherit alcak cunku @Published degisken olusturcaz.
// @Published olusturcaz cunku yayin yapcaz ya contentView'de, yani arayuzde degisiklik olcak, gosterilcek
class UserListViewModel: ObservableObject {
    @Published var userList = [UserViewModel]()
    
//    let webservice = Webservice()
//    let localservice = Localservice()
    //boyle ustteki 2 sekilde ayri ayri secmek yerine protokol olusturarak yapcaz, generic olarak.
    
    private var service: NetworkService
    init(service: NetworkService) {
        self.service = service
    }
    
    func downloadUsers() async {
        
        var resource = ""
        
        if service.type == "Webservice" {
            resource = Constants.Urls.usersExtension
        } else {
            resource = Constants.Paths.baseUrl
        }
        
        do {
            let users = try await service.download(resource)
            DispatchQueue.main.async {
                self.userList = users.map(UserViewModel.init)
            }
            
        } catch {
            print(error)
        }
        
        
    }
}




struct UserViewModel {
    
    let user: User
    
    var id: Int {
        user.id
    }
    
    var name: String {
        user.name
    }
    
    var username: String {
        user.username
    }
    
    var email: String {
        user.email
    }
    
    
}
