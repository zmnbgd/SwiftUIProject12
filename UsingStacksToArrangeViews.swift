//
//  UsingStacksToArrangeViews.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 21.6.23..
//

import SwiftUI

struct UsingStacksToArrangeViews: View {
    var body: some View {
        
//        VStack(spacing: 20) {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text("This is another text view")
//        }
        
//        VStack(alignment: .leading) {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text("This is another text view")
//        }
        
//        HStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Text("This is another text view")
//        }
        
//        VStack {
//            Spacer()
//            Text("First")
//            Text("Second")
//            Text("Third")
//            Spacer()
//            Spacer()
//        }
        
//        ZStack {
//            Text("Hello world")
//            Text("This is inside a stack")
//        }
        VStack {
            HStack {
                Text("1")
                Text("2")
                Text("3")
            }
            HStack {
                Text("4")
                Text("5")
                Text("6")
            }
            HStack {
                Text("7")
                Text("8")
                Text("9")
            }
        }
    }
}

struct UsingStacksToArrangeViews_Previews: PreviewProvider {
    static var previews: some View {
        UsingStacksToArrangeViews()
    }
}
