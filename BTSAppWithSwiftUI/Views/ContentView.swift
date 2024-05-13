//
//  ContentView.swift
//  BTSAppWithSwiftUI
//
//  Created by 김연지 on 5/13/24.
//

import SwiftUI
// tabView는 그냥 따로 빼자...
struct ContentView: View {
    var body: some View {
        TabView {
            BTSListView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("BTS")
                }
            ZStack{
                Color.red
                Text("SecondView")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.blue)
                    .fontWeight(.black)
            }.tabItem {
                Image(systemName: "2.square")
                Text("Second")
            }
            }
        }
    }


#Preview {
    ContentView()
}
