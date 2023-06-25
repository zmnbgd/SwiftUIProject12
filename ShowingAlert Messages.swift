//
//  ShowingAlert Messages.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 25.6.23..
//

import SwiftUI

struct ShowingAlert_Messages: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            //Button("Ok") {}
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this")
        }
    }
}

struct ShowingAlert_Messages_Previews: PreviewProvider {
    static var previews: some View {
        ShowingAlert_Messages()
    }
}
