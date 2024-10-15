//
//  ContentView.swift
//  ScreamMachine
//
//  Created by Samantha Cannillo on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button{
                Task { await Networking.sharedInstance.sendRequest() }
            } label: {
                Text("On/Off")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(10)
            }
            
            Button{
                Task { await Networking.sharedInstance.sendRequest() }
            } label: {
                Text("Red Hue")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }
            
            Button {
                Task { await Networking.sharedInstance.sendRequest() }
            } label: {
                Text("Flicker")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ContentView()
}
