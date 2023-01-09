//
//  ContentView.swift
//  personalCard
//
//  Created by Osman Emre Ömürlü on 12.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.6, green: 0.05, blue: 0.15)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("oemurlu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color.white, lineWidth: 5)
                    }
                Text("oemurlu")
                    .font(Font.custom("Pacifico-Regular", size: 65))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+90 123 456 78 90", imageName: "phone.fill")
                InfoView(text: "oemurlu@gmail.com", imageName: "envelope.fill")

                    
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


