//
//  Projects.swift
//  HotonApp
//
//  Created by hoton on 13/07/1445 AH.
//

import SwiftUI

struct ProjectsView: View {
    @EnvironmentObject var appVM : ProjectsVM
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing : 15){
                ForEach(ProjectsVM.projects) { project in
                    ProjectCardView(project: project)
                }
            }.padding(15)
        }.background(.ultraThinMaterial)
            .cornerRadius(10)
    }
}

struct ProjectCardView: View {
    @State var openSheet = false
    
    let project: Project
    var body: some View {
        VStack{
            Button(action: {
                openSheet.toggle()
            }, label: {
                Image(project.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            })
        }.sheet(isPresented: $openSheet, content: {
            ProjectsDetails(project: project)
        })
    }
}

struct ProjectsDetails: View {
    let project: Project
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    Text(project.name + " App")
                        .font(.title2)
                        .bold()
                    Image(project.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    Text(project.description)
                    Text("Technologies used 📲")
                        .font(.title3 )
                        .bold()
                    ForEach(project.technologies , id: \.self) { element in
                        Text(element)
                            .padding(3)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                    }
                    Spacer()
                    
                    
                    
                }.navigationBarItems(trailing:
                                        Button(action: {dismiss()},
                                               label: {
                    Text("Done").bold()
                        .font(.system(size: 16))
                    
                }))
                .padding()
            }
        }
    }
}

#Preview {
    ProjectsView()
}
