//
//  WebView.swift
//  H4X0R-News-SwiftUI
//
//  Created by Osman Emre Ömürlü on 13.12.2022.
//

import Foundation
import SwiftUI
import WebKit



struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
