//
//  SecondView.swift
//  Discover-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import SwiftUI


//MARK: - Image

struct SecondView: View {
    var body: some View {
        Image("oemurlu")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 360, height: 640)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}



