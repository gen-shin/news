//
//  Network<anager.swift
//  News
//
//  Created by Zhen YAN on 2020/06/13.
//  Copyright © 2020 Zhen YAN. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject{
    
   @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "https://newsapi.org/v2/everything?q=market&apiKey=08207580a22d40afaf3e8b76d9c20e3c"){
            let session = URLSession(configuration: .default)
            print("here")
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let results = try decoder.decode(PostData.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.articles
                                print(self.posts[2].url)
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}

