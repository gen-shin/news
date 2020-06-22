//
//  DetailView.swift
//  News
//
//  Created by Zhen YAN on 2020/06/13.
//  Copyright © 2020 Zhen YAN. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url : String
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}
