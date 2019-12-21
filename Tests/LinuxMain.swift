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
tests += IntegerSizeTests.allTests()
tests += FractionalSizeTests.allTests()
tests += SizePositionTests.allTests()
tests += RectanglePositionTests.allTests()
XCTMain(tests)
