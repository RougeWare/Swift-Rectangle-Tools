//
//  XCTestManifests.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RectangleToolsTests.allTests),
        testCase(IntegerSizeTests.allTests),
    ]
}
#endif
