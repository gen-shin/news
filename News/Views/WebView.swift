//
//  WebView.swift
//  News
//
//  Created by Zhen YAN on 2020/06/13.
//  Copyright © 2020 Zhen YAN. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String
    
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString){
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
