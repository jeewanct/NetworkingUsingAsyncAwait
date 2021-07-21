//
//  UsersModel.swift
//  CuncurrencyBySwift
//
//  Created by jeevan tiwari on 6/15/21.
//

import Foundation

struct UserModel: Codable, Identifiable{
    var userId: CLong
    var id: CLong
    var title: String
    var completed: Bool
}
