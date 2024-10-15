//
//  ContentView.swift
//  ScreamMachine
//
//  Created by Samantha Cannillo on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button{
                Task { await Networking.sharedInstance.sendRequest() }
            } label: {
                Text("Eloise")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)
            }
            
            Button{
                Task { await Networking.sharedInstance.sendRequest() }
            } label: {
                Text("Murphy")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.brown)
                    .cornerRadius(10)
            }
            
            Button {
                Task { await Networking.sharedInstance.sendRequest() }
            } label: {
                Text("Banjo")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(10)
            }


        }
        .padding()
    }
}

#Preview {
    ContentView()
}
