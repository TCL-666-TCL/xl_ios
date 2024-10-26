//
//  ContentView.swift
//  xunliao
//
//  Created by  mac on 2024/10/21.
//

import SwiftUI

struct ContentView: View {
    
    let microChat:String = NSLocalizedString("microChat", comment: "mine")
    let positioning:String = NSLocalizedString("positioning", comment: "mine")
    let health:String = NSLocalizedString("health", comment: "mine")
    let mine:String = NSLocalizedString("mine", comment: "mine")
    
    var body: some View {
        TabView {
            MicroChatView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text(microChat)
                }
            LocationView()
                .tabItem {
                    Image(systemName: "location.fill")
                    Text(positioning)
                }
            HealthDataView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text(health)
                }
            MemberView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text(mine)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
