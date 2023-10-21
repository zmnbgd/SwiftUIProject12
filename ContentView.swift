//
//  ContentView.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 21.6.23..
//

import SwiftUI

//MARK: Day 24 - Challenge 2. Go back to project 2 and replace the Image view used for flags with a new FlagImage() view that renders one flag image using the specific set of modifiers we had.

//MARK: Day 34 - Challenge 1. When you tap a flag, make it spin around 360 degrees on the Y axis.

struct FlagImage: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var questionCount = 0
    
    @State private var animationAmount = 0.0
    
    @State private var countries = ["Estonia", "France", "Poland", "Russia", "Spain", "Germany", "Ireland", "Italy", "Nigeria", "UK", "US"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            //Color.blue
//            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
//            RadialGradient(stops: [.init(color: .blue, location: 0.3), .init(color: .red, location: 0.3)], center: .top, startRadius: 200, endRadius: 700)
            RadialGradient(stops: [.init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3), .init(color: Color(red: 0.76, green: 0.15, blue: 0.25), location: 0.3)], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Text("Gues the flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                VStack(spacing: 8) {
                    VStack {
                        Text("Tap the correct flag")
                            //.foregroundColor(.white)
                            //.font(.subheadline.weight(.heavy))
                            //.font(.largeTitle.weight(.semibold))
                            .titleStyle()
                        Text(countries[correctAnswer])
                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3) { number in
                        Button {

                            // MARK: Flag was tapped
                            flagTapped(number)
                            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                                animationAmount += 360
                            }
                        } label: {
//                            Image(countries[number])
//                                .renderingMode(.original)
//                                .clipShape(Capsule())
//                                .shadow(radius: 5)
                            FlagImage(imageName: countries[number])
                        }
                        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                //.background(.regularMaterial)
                .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
                
            }
            .padding()
        }
        //MARK: Challenge 3. Make the game show only 8 questions, at which point they see a final alert judging their score and can restart the game.
        .alert(scoreTitle, isPresented: $showingScore) {
            if questionCount != 7 {
                Button("Continue", action: askQuestion)
            } else {
                Button("Start new game", action: newGame)
            }
        } message: {
            if questionCount != 7 {
                Text("Your score is \(score)")
            } else {
                Text("You win!")
            }
        }
    }
    //MARK: Challenge 1. Add an @State property to store the user’s score, modify it when they get an answer right or wrong, then display it in the alert and in the score label.
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            score += 1
            scoreTitle = "Correct"
        } else {
            score -= 1
            //MARK: Challenge 2. When someone chooses the wrong flag, tell them their mistake in your alert message – something like “Wrong! That’s the flag of France,” for example.
            
            scoreTitle = "Wrong! That’s the flag of \(countries[number]),"
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionCount += 1
    }
    
    func newGame() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionCount += 1
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: Day 24 - Challenge 3. Create a custom ViewModifier (and accompanying View extension) that makes a view have a large, blue font suitable for prominent titles in a view.
struct BlueCustomTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.red)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(BlueCustomTitleModifier())
    }
}


