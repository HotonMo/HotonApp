//
//  AboutmeView.swift
//  HotonApp
//
//  Created by hoton on 13/07/1445 AH.
//

import SwiftUI

struct AboutmeView: View {
    var body: some View {
        VStack{
            Image("my-avatar") .modifier(Images(height: 150, width: 150))
                .modifier(Background(cornerRadius: 80))
            Text("Hi, I'm Hoton Alharthi")
                .modifier(Title(font: .title2))
            Text("Computer science fresh graduate | Passion IOS developer | UI/UX designer ")
                .modifier(Background(cornerRadius: 10, padding: 6))
              
        }
    }
}
#Preview {
    AboutmeView()
}
