//
//  ProjectsModel.swift
//  HotonApp
//
//  Created by hoton on 13/07/1445 AH.
//

import Foundation

struct Project :Identifiable{
    var id = UUID()
    let name: String
    let description: String
    let image: String
    var technologies: [String]
}

