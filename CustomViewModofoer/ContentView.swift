//
//  ContentView.swift
//  CustomViewModofoer
//
//  Created by Dainis Putans on 04/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    let motto1 = Text("Dragon Sleeps")
    let motto2 = Text("Don't tickle")
    
    var motto3: some View {
        Text("Don't panic")
    }
    
    var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var spells2: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
    struct CapsuleText: View {
        var text: String
        
        var body: some View {
            Text(text)
                .font(.largeTitle)
                .padding()
                .background(.blue)
                .clipShape(.capsule)
        }
    }
    
    
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundStyle(.white)
            CapsuleText(text:"Second")
                .foregroundColor(.orange)
        }

//        If you ever struggle to remember the ternary operator... here's a simple mnemonic.
//
//        "WTF"
//
//        What? True : False
//
//        I mean, you're probably already thinking WTF. Might as well use it.

        Form {
            
            VStack {
                
                Button("Hello Dainis") {
                    useRedText.toggle()
                }
                .foregroundStyle(useRedText ? .red : .blue)
                .blur(radius: 5)
                
                Text("Danis")
                    .font(.largeTitle)
                    .blur(radius: 3)
                Text("Lada")
                Text("Katja")
                Text("Ruslan")
                    .padding(20)
            }
            .font(.title)
            .blur(radius: 2)
            
            VStack(spacing: 20) {
                motto1
                    .foregroundStyle(.cyan)
                motto2
                    .foregroundStyle(.red)
                
                motto3
                
                spells
                    .padding(20)
                
                spells2
                    .foregroundColor(.purple)
            }
        }
    }
}

#Preview {
    ContentView()
}
