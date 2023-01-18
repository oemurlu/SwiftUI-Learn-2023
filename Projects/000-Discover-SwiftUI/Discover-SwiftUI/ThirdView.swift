//
//  ThirdView.swift
//  Discover-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI


//MARK: - List

struct ThirdView: View {
    
    let myArray = ["Osman", "Emre", "Omurlu", "Denizli"]
    
    var body: some View {
        List(myArray, id: \.self) { element in
            HStack {
                Image(systemName: "phone")
                Image("oemurlu")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text(element)
                    .padding(.trailing)
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

