//
//  FourthView.swift
//  Discover-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI


//MARK: - State

struct FourthView: View {
    
    @State var myName = "osman"
    //degisken olusturduk ve bu degiskeni sonradan degistireceksek bunu @State ile belirtmemiz lazim
    
    var body: some View {
        VStack {
            Text(myName)
                .font(.title)
                .padding()
            Button {
                myName = "emre"
            } label: {
                Text("my button")
            }

        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
