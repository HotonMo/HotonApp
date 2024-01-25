//
//  ApplicationVM.swift
//  HotonApp
//
//  Created by hoton on 13/07/1445 AH.
//

import SwiftUI
class ProjectsVM : ObservableObject{
    

    static var projects: [Project] = [
        Project(name: "Sabeel", description: " is a free communication app designed to help Autism people to easily communicate with their caregiver in their own language 'PECS' (Picture Exchange Communication System) digitally by just a tab.The caregiver can add PECS, hide or delete PECS, and seclude the PECS.", image: "Sabeel", technologies: ["SwiftUI","CloudKit","VisionKit","AVKit","MVVM architecture","App Store", "Peer to Peer","Notification","Gesture Recognition","Responsive for screen size","Multi-Lingual"]),
        
        Project(name: "Ademha", description: "is a smart waste management solution that connects users with smart containers to dispose of their food waste. Users can find container locations and unlock them using the app, which automatically notifies farmers and compost factories for collection.", image: "Ademha", technologies: ["SwiftUI", "Internet of Things (IoT)", "Firebase", "MapKit", "AVKit", "MVVM architecture", "AppStore", "Notification", "Gesture Recognition", "Responsive for screen size", "Multi-Lingual"]),
        
        Project(name: "Don't Say It!", description: "is a multiplayer offline words game about who can guess the word first. It is depends on three players at least, one of them is The questioner and it's have more than 50 playing cards.", image: "Don'tSayIt" , technologies: ["SwiftUI", "AVKit", "MVVM architecture", "Gesture Recognition", "App store"]),
        
        Project(name: "Aljerah", description: "is An App that helps neighbors who needs affective and easy communication between each others by establishing a communication channel only for the neighbors and facilitate the services between them", image: "Aljerah" , technologies: ["SwiftUI", "MapKit", "places API"]),
        
        Project(name: "Soun", description: "app idea came from a huge need of tracking medical records between different hospitals. As our team noticed that there are some complicated and not very general solutions, we thought of developing a more simple and universal one", image: "Soun", technologies: ["SwiftUI", "MVVM architecture", "CoreData", "CloudKit"]),
        
        Project(name: "Taqadam", description: "is an app help people seekers to find there career in any field by giving them the definition and what skills they need to help get a position in that company or field.", image: "Taqadam", technologies: ["SwiftUI", "MVVM architecture", "Vectara Api"]),
        
        Project(name: "TaskStar", description: "It's a simple iPad application build to help kids to be more commitment in their daily tasks ", image: "TaskStar", technologies: ["SwiftUI", "MVVM architecture"])
    ]


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
