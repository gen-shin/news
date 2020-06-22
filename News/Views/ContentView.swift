//
//  ContentView.swift
//  News
//
//  Created by Zhen YAN on 2020/06/13.
//  Copyright © 2020 Zhen YAN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("Market News")
        }
        .onAppear(perform: networkManager.fetchData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

