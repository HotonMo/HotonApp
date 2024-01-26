//
//  ContentView.swift
//  HotonApp
//
//  Created by hoton on 12/07/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                AboutmeView()
                ProjectsView()
            }.padding(.horizontal,10)
        }
        ContactView()
    }
}



#Preview {
    ContentView()
}
