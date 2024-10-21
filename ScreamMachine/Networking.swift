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
    
    func sendRequest(_ path: String) async {
        let urlRequest = URLRequest(url: URL(string: "http://192.168.0.55:5000/\(path)")!)
        
        do {
            let (data, urlResponse) = try await URLSession.shared.data(for: urlRequest)
        } catch {
            // no-op
        }
    }
    
}
