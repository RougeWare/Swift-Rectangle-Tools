//
//  LinuxMain.swift
//  RectangleTools
//
//  Created by Ben Leggiero on 2019-10-21.
//  Copyright © 2019 Ben Leggiero BH-1-PS.
//

import XCTest

import RectangleToolsTests

var tests = [XCTestCaseEntry]()
tests += IntegerSizeTests.allTests
tests += FractionalSizeTests.allTests
tests += RectanglePositionTests.allTests
tests += SizeMeasurementTests.allTests
tests += SizePositionTests.allTests
tests += TwoDimensionalMeasurementTests.allTests
tests += FourSidedTests.allTests
tests += Rectangle_Edgewise_Init_Tests.allTests
XCTMain(tests)
