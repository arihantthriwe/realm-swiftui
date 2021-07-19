//
//  HomeView.swift
//  mongodb-swiftui
//
//  Created by Amey Sunu on 15/07/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            DiaryView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("My Diary")
                }
            GlobalUsersView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Global")
                }
            
            Button(action: {
                app.currentUser?.logOut { (error) in
                    if let e = error {
                        print(e.localizedDescription)
                    } else {
                        print("logged out")
                    }
                }
                
            }) {
                Text("User Details")
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("User Details")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
