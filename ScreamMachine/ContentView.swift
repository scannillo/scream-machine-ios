//
//  ContentView.swift
//  ScreamMachine
//
//  Created by Samantha Cannillo on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            CustomButton(label: "On/Off", color: .green)
            CustomButton(label: "Red Hue", color: .red)
            CustomButton(label: "Flicker", color: .gray)
        }
    }
}

struct CustomButton: View {
    
    let label: String
    let color: Color
    
    var body: some View {
        Button {
            print("123")
        } label: {
            Text(label)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
        .tint(color)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

#Preview {
    ContentView()
}
