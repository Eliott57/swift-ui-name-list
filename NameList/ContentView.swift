//
//  ContentView.swift
//  NameList
//
//  Created by Eliott Oblinger on 12/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false;
    
    @State private var selectedUser: User? = nil
    
    private var users: [User] = [
        User(name: "Alice"),
        User(name: "Bob"),
        User(name: "Charlie")
    ]
    
    private func showAlertFor(user: User) -> Void {
        showingAlert = true;
        selectedUser = user;
    }
    
    var body: some View {
        List(users) { user in
            Button(action: {
                showAlertFor(user: user)
            }) {
               Text(user.name)
           }
        }
        .alert("Bonjour, \(selectedUser?.name ?? "Toi")!", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
