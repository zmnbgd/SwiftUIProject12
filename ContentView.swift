//
//  ContentView.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 21.6.23..
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var countries = ["Estonia", "France", "Poland", "Russia", "Spain", "Germany", "Ireland", "Italy", "Nigeria", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
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
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}