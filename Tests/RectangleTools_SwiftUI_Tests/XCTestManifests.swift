//
//  XCTestManifests.swift
//  RectangleTools
//
//  Created by Ky Leggiero on 2021-07-21.
//  Copyright © 2021 Ky Leggiero BH-1-PS.
//

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(FourSided_SwiftUI_Tests.allTests),
    ]
}
#endif
