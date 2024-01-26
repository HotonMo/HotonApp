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
        VStack{
            Text("My iOS projects:").modifier(Title(font: .title2))
            ScrollView(.horizontal){
                HStack(spacing : 15){
                    ForEach(ProjectsVM.projects) { project in
                        ProjectCardView(project: project)
                    }
                }
            }.modifier(Background(cornerRadius: 10, padding: 16))
        }
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
                    .modifier(Images(height: 100, width: 100))
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
                        .modifier(Title(font: .title2))
                    Image(project.image)
                        .modifier(Images(height: 80, width: 80))
                    Text(project.description)
                    Text("Technologies used 📲")
                        .modifier(Title(font: .title3))
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
                    Text("Done").modifier(Title(font: .system(size: 16)))
                       
                    
                }))
                .padding()
            }
        }
    }
}

#Preview {
    ProjectsView()
}
