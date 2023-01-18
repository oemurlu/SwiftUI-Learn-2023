//
//  FifthView.swift
//  Discover-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI


//MARK: - Binding

struct FifthView: View {
    @State var myName = "Emre"
    var body: some View {
        VStack {
            Text(myName)
                .padding()
                .font(.largeTitle)
                .bold()
            
            // $myName demek binding etme islemidir. textfield icine bsi girince es zamanli renderlanacak o binding ettigimiz degisken
            TextField("placeholder", text: $myName)
                .padding()
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
