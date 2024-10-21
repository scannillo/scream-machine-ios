//
//  ContentView.swift
//  ScreamMachine
//
//  Created by Samantha Cannillo on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 15) {
                CustomButton(label: "😈 Red: + Strobe", color: .red, path: "horror_tease", isLoading: $isLoading)
                CustomButton(label: "🔪 Off: + Strobe", color: .orange, path: "murder_tease", isLoading: $isLoading)
                CustomButton(label: "🍼 Red: - Strobe", color: .purple, path: "baby_tease", isLoading: $isLoading)
                CustomButton(label: "♻️ Reset", color: .gray, path: "reset", isLoading: $isLoading)
            }
            
            if isLoading {
                SpinnerView()
            }
        }
    }
}

struct CustomButton: View {
    
    let label: String
    let color: Color
    let path: String
    
    @Binding var isLoading: Bool
    
    var body: some View {
        Button {
            isLoading = true
            Task {
                await Networking.sharedInstance.sendRequest(path)
                isLoading = false
            }
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
