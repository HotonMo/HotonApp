//
//  MailHelper.swift
//  HotonApp
//
//  Created by hoton on 13/07/1445 AH.
//

import SwiftUI
import UIKit
import MessageUI
import AudioToolbox


struct MailView: UIViewControllerRepresentable {

    @Environment(\.presentationMode) var presentation
    @Binding var result: Result<MFMailComposeResult, Error>?
    var recipients : [String]

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

        @Binding var presentation: PresentationMode
        @Binding var result: Result<MFMailComposeResult, Error>?

        init(presentation: Binding<PresentationMode>,
             result: Binding<Result<MFMailComposeResult, Error>?>) {
            _presentation = presentation
            _result = result
        }

        func mailComposeController(_: MFMailComposeViewController,
                                           didFinishWith result: MFMailComposeResult,
                                           error: Error?)
                {
                    defer {
                        $presentation.wrappedValue.dismiss()
                    }
                    guard error == nil else {
                        self.result = .failure(error!)
                        return
                    }
                    self.result = .success(result)
                    
                    if result == .sent {
                    AudioServicesPlayAlertSound(SystemSoundID(1001))
                    }
                }
            }
            func makeCoordinator() -> Coordinator {
                return Coordinator(presentation: presentation,
                                   result: $result)
            }
    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
                let vc = MFMailComposeViewController()
                vc.setToRecipients(recipients)
                vc.mailComposeDelegate = context.coordinator
                return vc
            }
            func updateUIViewController(_: MFMailComposeViewController,
                                        context: UIViewControllerRepresentableContext<MailView>)  {}
        }
