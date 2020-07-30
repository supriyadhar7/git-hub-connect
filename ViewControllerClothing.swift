//
//  ViewControllerClothing.swift
//  git hub connect
//
//  Created by Supriya Dhar on 7/29/20.
//  Copyright © 2020 Supriya Dhar. All rights reserved.
//

import UIKit
import WebKit

class ViewControllerClothing: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1
        let url = URL(string: "https://www.thredup.com")!
        webView.load(URLRequest(url: url))
    
        // 2
        let refresh =
            UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
        
}
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    /*
    
     
    
 */
}

