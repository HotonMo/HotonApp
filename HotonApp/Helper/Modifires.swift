//
//  Modifires.swift
//  HotonApp
//
//  Created by hoton on 14/07/1445 AH.
//

import Foundation
import SwiftUI

struct Title: ViewModifier {
    var font : Font
    func body(content: Content) -> some View {
        content
            .font(font)
            .bold()
    }
}

struct Background: ViewModifier {
    var cornerRadius: CGFloat
    var padding : CGFloat?
    func body(content: Content) -> some View {
        content
            .padding(padding ?? 0)
            .background(.ultraThinMaterial)
            .cornerRadius(cornerRadius)
    }
}



struct Images: ImageModifier {
    var height : CGFloat
    var width : CGFloat
    func body(image: Image) -> some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: width, height: height)
    }
}



protocol ImageModifier {
    associatedtype Body : View
    func body(image: Image) -> Self.Body
}

extension Image {
    func modifier<M>(_ modifier: M) -> some View where M: ImageModifier {
        modifier.body(image: self)
    }
}
