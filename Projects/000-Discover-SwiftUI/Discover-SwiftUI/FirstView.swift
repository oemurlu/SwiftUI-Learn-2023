//
//  FirstView.swift
//  Discover-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI


//MARK: - Stack

struct FirstView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold(true)
                .border(.black)
                .padding()
            Text("Hello, SwiftUI")
                .font(.footnote)
                .fontWeight(.black)
                .border(.blue)
                .padding()
        }
        .border(.green)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
