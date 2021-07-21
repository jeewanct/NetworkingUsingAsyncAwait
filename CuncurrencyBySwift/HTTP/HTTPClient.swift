//
//  HTTPClient.swift
//  CuncurrencyBySwift
//
//  Created by jeevan tiwari on 6/15/21.
//

import Foundation

struct HTTPClient{
    let session = URLSession.shared
    
    func request<T: Decodable>(urlString: String) async -> Result<T?, HTTPError>{
        let url = URL(string: urlString)!
        do{
            let response = try await session.data(from: url)
            let json = try JSONDecoder().decode(T.self, from: response.0)
            return .success(json)
        }catch let error{
            return .failure(HTTPError())
        }
    }
}
