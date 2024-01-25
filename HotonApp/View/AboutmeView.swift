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
            Image("my-avatar").resizable()
                .frame(width:150 , height: 150)
                .background(.ultraThinMaterial)
                .cornerRadius(80)
            Text("Hi, I'm Hoton Alharthi")
                .font(.title2)
                .fontWeight(.bold)
            Text("Computer science fresh graduate | Passion IOS developer | UI/UX designer ")
                .padding(6)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                .font(.body)
        }
    }
}
#Preview {
    AboutmeView()
}
