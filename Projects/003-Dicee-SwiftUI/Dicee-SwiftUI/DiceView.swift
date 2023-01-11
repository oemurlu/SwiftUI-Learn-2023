//
//  DiceView.swift
//  Dicee-SwiftUI
//
//  Created by Osman Emre Ömürlü on 12.12.2022.
//

import SwiftUI

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(n: 1)
        
    }
}
