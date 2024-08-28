//
//  DependencyPreviewTests.swift
//
//
//  Created by Rayan Waked on 8/28/24.
//

import XCTest
@testable import DependencyPreview

final class DependencyPreviewTests: XCTestCase {
    func testDependencyPreviewInitialization() {
        let mermaidCode = "graph TD; A-->B; B-->C;"
        let diagram = DependencyPreview(mermaidCode: mermaidCode)
        XCTAssertNotNil(diagram)
        XCTAssertEqual(diagram.mermaidCode, mermaidCode)
    }
}
