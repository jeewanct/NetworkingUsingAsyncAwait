//
//  UsersViewModel.swift
//  CuncurrencyBySwift
//
//  Created by jeevan tiwari on 6/15/21.
//

import SwiftUI
import Foundation

class UserViewModel: ObservableObject{
    @Published var users: [UserModel]?
    
    func fetchUsers() async{
        let response: Result<[UserModel]?, HTTPError> = await HTTPClient().request(urlString: "https://jsonplaceholder.typicode.com/todos/")
        switch response{
        case .success(let users):
            self.users = users
            print(dump(users))
        case .failure(let error):
            break
        }
    }
}

