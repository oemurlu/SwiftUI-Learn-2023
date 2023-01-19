//
//  ContentView.swift
//  Interchangable-Network-SwiftUI
//
//  Created by Osman Emre Ömürlü on 17.12.2022.
//

/* BU CHAPTERIN AMACI: mesela webten veri cekcez ama api yazan backendciye degisiklik yap demeden verileri local'e kaydedip verileri kolayca localde cektik. prokoller sayesinde verileri istersek webten, istersek localden cekebiliyoruz. init() icindeki kodu degistirerek. sonra mesela localdekini begendik sonra backendciye gidip boyle olsa daha iyi olur diyebiliriz mesela.

 */

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userListViewModel : UserListViewModel
       
       init() {
//           self.userListViewModel = UserListViewModel(service: Localservice())
           //localdan veri ceker
           
           self.userListViewModel = UserListViewModel(service: Webservice())
           //webden veri ceker kolayca degistrebilirsin hangisinden ver cekmek istyiosan.
       }
    
    var body: some View {
        List(userListViewModel.userList, id: \.id) { user in
            VStack {
                Text(user.name)
                    .font(.title3)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(user.username)
                    .foregroundColor(.green)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(user.email)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }.task {
            await userListViewModel.downloadUsers()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
