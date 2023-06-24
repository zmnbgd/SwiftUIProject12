//
//  ButtonsAndImages.swift
//  SwiftUI Day 20
//
//  Created by Marko Zivanovic on 24.6.23..
//

import SwiftUI

struct ButtonsAndImages: View {
    var body: some View {
        //Button("Delete section",role: .destructive, action: executeDelete)
        
//        VStack {
//            Button("Button 1") {}
//                .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) {}
//                .buttonStyle(.bordered)
//            Button("Button 3") {}
//                .buttonStyle(.borderedProminent)
//                .tint(.mint)
//            Button("Button 4", role: .destructive) {}
//                .buttonStyle(.borderedProminent)
//        }
//        }
        
//        Button {
//            print("Button was tappde")
//        } label: {
//            Text("tap me!")
//                .padding()
//                .foregroundStyle(.white)
//                .backgroundStyle(.red)
//        }
        
//        Image(systemName: "pencil")
        
                Button {
                    print(" Edit button was tappde")
                } label: {
                    //Image(systemName: "pencil")
                    Label("Edit", systemImage: "pencil")
                }
                //.renderingMode(.original)
    }
    func executeDelete() {
        Text("Now deleting")
    }
}

struct ButtonsAndImages_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAndImages()
    }
}
