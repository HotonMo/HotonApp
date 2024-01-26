//
//  ContactView.swift
//  HotonApp
//
//  Created by hoton on 13/07/1445 AH.
//

import SwiftUI
import MessageUI

struct ContactView: View {
    @State var isShowingMailView = false
    @State var alertNoMail = false
    @State var result: Result<MFMailComposeResult, Error>? = nil
    var body: some View {
        
        VStack{
            Text("Get in touch").modifier(Title(font: .title2))
            HStack(alignment: .center, spacing: 30){
                LinkedIn
                mail
                phone
            }.modifier(Background(cornerRadius: 10,padding: 16))
        }
    }
}


extension ContactView {
    var LinkedIn: some View {
        Link(destination: URL(string: contact.linkedin.data)!) {
            contact.linkedin.image
                .modifier(Images(height: 50, width: 50))
        }
    }
    
    var mail: some View {
        Button {
            MFMailComposeViewController.canSendMail() ? self.isShowingMailView.toggle() : self.alertNoMail.toggle()
        } label: {
            contact.mail.image
                .modifier(Images(height: 50, width: 50))
        }
        .sheet(isPresented: $isShowingMailView) {
            MailView(result: self.$result, recipients: [contact.mail.data])
        }
        .alert(isPresented: self.$alertNoMail) {
            Alert(title: Text("This device not support mail"))
        }
    }
    
    var phone: some View {
        Button {
            let tel = "tel://"
            let formattedString = tel + contact.phone.data
            guard let url = URL(string: formattedString) else { return }
            UIApplication.shared.open(url)
        } label: {
            contact.phone.image
                .modifier(Images(height: 50, width: 50))
        }
    }
}


enum contact: CaseIterable {
    case linkedin
    case mail
    case phone
    
    var image: Image {
        switch self {
        case.linkedin:
            return Image("linkedin")
        case .mail:
            return Image("mail")
        case .phone:
            return Image("phone")
        }
    }
    
    var data: String {
        switch self {
        case.linkedin:
            return"https://www.linkedin.com/in/hoton-mo"
        case .mail:
            return "i.hoton19@gmail.com"
        case .phone:
            return "966590383081"
        }
    }
}

#Preview {
    ContactView()
}
