//
//  DependencyPreview.swift
//
//
//  Created by Rayan Waked on 8/28/24.
//

import SwiftUI
import WebKit

public struct DependencyPreview: View {
    let logic: String
    
    public init(logic: String) {
        self.logic = logic
    }
    
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                WebView(html: generateHTML(from: logic), viewSize: geometry.size)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    private func generateHTML(from logic: String) -> String {
        """
        <!DOCTYPE html>
        <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
            <script src="https://cdn.jsdelivr.net/npm/mermaid@11.0.2/dist/mermaid.min.js"></script>
            <style>
                body, html {
                    margin: 0;
                    padding: 0;
                    width: 100%;
                    height: 100%;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    overflow: hidden;
                }
                #diagram-container {
                    position: relative;
                    width: 100%;
                    height: 100%;
                }
                #diagram {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    max-width: 100%;
                    max-height: 100%;
                }
            </style>
        </head>
        <body>
            <div id="diagram-container">
                <div id="diagram" class="mermaid">
                \(logic)
                </div>
            </div>
            <script>
                mermaid.initialize({
                    startOnLoad: true,
                    theme: 'default',
                    flowchart: {
                        useMaxWidth: false,
                        htmlLabels: true,
                        curve: 'basis'
                    }
                });
            </script>
        </body>
        </html>
        """
    }
}
