//
//  WebView.swift
//
//
//  Created by Rayan Waked on 8/28/24.
//

import SwiftUI
import WebKit

#if os(iOS)
typealias ViewRepresentable = UIViewRepresentable
#elseif os(macOS)
typealias ViewRepresentable = NSViewRepresentable
#endif

struct WebView: ViewRepresentable {
    let html: String
    let viewSize: CGSize
    
    #if os(iOS)
    func makeUIView(context: Context) -> WKWebView {
        createWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        updateWebView(uiView)
    }
    #elseif os(macOS)
    func makeNSView(context: Context) -> WKWebView {
        createWebView()
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        updateWebView(nsView)
    }
    #endif
    
    private func createWebView() -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: configuration)
        #if os(iOS)
        webView.scrollView.isScrollEnabled = false
        #endif
        #if os(iOS)
        webView.backgroundColor = .clear
        #elseif os(macOS)
        webView.layer?.backgroundColor = .clear
        #endif
        return webView
    }
    
    private func updateWebView(_ webView: WKWebView) {
        webView.loadHTMLString(html, baseURL: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.adjustWebViewContent(webView)
        }
    }
    
    private func adjustWebViewContent(_ webView: WKWebView) {
        let js = """
        // Add any necessary JavaScript for adjusting content
        """
        
        webView.evaluateJavaScript(js)
    }
}
