//
//  ContentView.swift
//  CuncurrencyBySwift
//
//  Created by jeevan tiwari on 6/15/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = UserViewModel()
    var body: some View {
        ScrollView{
            ForEach(viewModel.users ?? [UserModel]()){ user in
                Text(user.title)
                    .padding()
            }
        }
        .onAppear {
            async{
                await viewModel.fetchUsers()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
