//
//  ColorsAndFrames.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 22.6.23..
//

import SwiftUI

struct ColorsAndFrames: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
                //Color.blue
                //Color.secondary
                //Color(red: 1.0, green: 0.8, blue: 1.0)
                    //.frame(width: 200, height: 200)
                    //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
                //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    //.backgroundStyle(.red)
            }
            //.background(.red)
            //.ignoresSafeArea()
            Text("Your text goes here!")
                //.foregroundColor(.secondary)
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct ColorsAndFrames_Previews: PreviewProvider {
    static var previews: some View {
        ColorsAndFrames()
    }
}
