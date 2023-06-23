//
//  Gradients.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 23.6.23..
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)
//            .ignoresSafeArea()
        
//        LinearGradient (gradient: Gradient (stops: [
//            .init (color: .white, location: 0.45), .init (color: .black, location: 0.55) ]), startPoint: .top, endPoint: .bottom)
        
//        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
        
        AngularGradient(gradient: Gradient(colors: [.red, .green, .blue, .yellow, .purple, .red]), center: .center)
            .ignoresSafeArea()
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
