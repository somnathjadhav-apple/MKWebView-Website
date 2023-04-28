//
//  ViewController.swift
//  MKWebView Website
//
//  Created by Somnath Jadhav on 4/28/23.
//email me - somnathjadhav.apple@gmail.com

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://developer.apple.com/documentation/webkit/wkwebview")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

