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
        let logic = "graph TD; A-->B; B-->C;"
        let diagram = DependencyPreview(logic: logic)
        XCTAssertNotNil(diagram)
        XCTAssertEqual(diagram.logic, logic)
    }
}
