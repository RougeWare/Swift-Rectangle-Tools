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
        testCase(IntegerSizeTests.allTests),
        testCase(FractionalSizeTests.allTests),
        testCase(RectanglePositionTests.allTests),
        testCase(SizeMeasurementTests.allTests),
        testCase(SizePositionTests.allTests),
        testCase(TwoDimensionalMeasurementTests.allTests),
        testCase(FourSidedTests.allTests),
        testCase(Rectangle_Edgewise_Init_Tests.allTests),
        testCase(Rectangle_Combination_Tests.allTests),
    ]
}
#endif
