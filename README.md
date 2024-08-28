# DependencyPreview

DependencyPreview is a Swift package that provides a convenient way to render Mermaid diagrams in SwiftUI applications for both iOS and macOS platforms.

## Features

- Render Mermaid diagrams in SwiftUI views
- Support for iOS 14+ and macOS 11+
- Responsive design that adapts to different screen sizes
- Custom WebView implementation for diagram rendering

## Installation

To use DependencyPreview in your project, add it as a dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/DependencyPreview.git", from: "1.0.0")
]
```

Then, add "DependencyPreview" as a dependency of your target:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["DependencyPreview"]),
]
```

## Usage

To use DependencyPreview in your SwiftUI view:

1. Import the package:
   ```swift
   import DependencyPreview
   ```

2. Create a DependencyPreview view with your Mermaid code:
   ```swift
   DependencyPreview(mermaidCode: "graph TD; A-->B; B-->C;")
   ```

3. Add the view to your SwiftUI hierarchy:
   ```swift
   var body: some View {
       DependencyPreview(mermaidCode: "graph TD; A-->B; B-->C;")
           .frame(height: 300)
   }
   ```

## Requirements

- iOS 14.0+ / macOS 11.0+
- Swift 5.10+

## License

MIT License

Copyright (c) 2024 Rayan Waked

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Author

Rayan Waked

## Acknowledgements

This package uses the Mermaid library for rendering diagrams.
