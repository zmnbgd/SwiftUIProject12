//
//  ContentView.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 21.6.23..
//

import SwiftUI

struct ContentView: View {
    
    var countries = ["Estonia", "France", "Poland", "Russia", "Spain", "Germany", "Ireland", "Italy", "Nigeria", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack(spacing: 30) {
                VStack {
                    Text("tap the correct flag")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                ForEach(0..<3) { number in
                    Button {
                        // MARK: Flag was tapped
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
