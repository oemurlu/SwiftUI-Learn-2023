//
//  InfoView.swift
//  personalCard
//
//  Created by Osman Emre Ömürlü on 12.12.2022.
//

import SwiftUI


struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.init(red: 0.8, green: 0.05, blue: 0.15))
                    Text(text)
                        .foregroundColor(.black)
                }
            }
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
    }
}
