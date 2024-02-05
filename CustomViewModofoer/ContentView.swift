//
//  ContentView.swift
//  CustomViewModofoer
//
//  Created by Dainis Putans on 04/02/2024.
//

import SwiftUI

// 1st option
// Remember, modifiers return new objects rather than modifying existing ones
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

// 2nd option
// Remember, modifiers return new objects rather than modifying existing ones
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

// 3rd option
struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.orange)
        }
    }
}

struct Font: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .fontWeight(.bold)
            .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}

extension View {
    func fontprominent() -> some View {
        modifier(Font())
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

    struct ContentView: View {
        
        var body: some View {
            
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "My Property")
            
            Text("Hello Denis")
                .modifier(Title())
            
            Text("Destroy ...")
                .titleStyle()
            
            Text("Katja")
                .fontprominent()
            
        }
    }

#Preview {
    ContentView()
}
