//
//  User.swift
//  NameList
//
//  Created by Eliott Oblinger on 12/07/2023.
//

import Foundation

struct User: Identifiable {
    let name: String
    let id = UUID()
}
