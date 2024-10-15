//
//  Networking.swift
//  ScreamMachine
//
//  Created by Samantha Cannillo on 10/14/24.
//

import Foundation

final class Networking {
    
    static let sharedInstance = Networking()
    
    private init() { }
    
    func sendRequest() async {
        let urlRequest = URLRequest(url: URL(string: "http://127.0.0.1:5000")!)
        
        do {
            let (data, urlResponse) = try await URLSession.shared.data(for: urlRequest)
        } catch {
            // no-op
        }
    }
    
}
