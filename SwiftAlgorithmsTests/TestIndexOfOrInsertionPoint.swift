//
//  SwiftAlgorithmsTests.swift
//  SwiftAlgorithmsTests
//
//  Created by Tim Sloncz on 9/15/24.
//

import XCTest
@testable import SwiftAlgorithms

final class TestIndexOfOrInsertionPoint: XCTestCase {

    func testOneElement() throws {
        XCTAssertEqual(0, Algorithm.indexOfOrInsertionPoint([1], for: 1).1)
    }
    
    func testFirstMiddleElement() throws {
        XCTAssertEqual(1, Algorithm.indexOfOrInsertionPoint([1,2,3], for: 2).1)
    }
    func testFirstElement() throws {
        XCTAssertEqual(0, Algorithm.indexOfOrInsertionPoint([1,2,3], for: 1).1)
    }
    func testLastElement() throws {
        XCTAssertEqual(2, Algorithm.indexOfOrInsertionPoint([1,2,3], for: 3).1)
    }
    
    func testInbetweenHighElement() throws {
        XCTAssertEqual(2, Algorithm.indexOfOrInsertionPoint([1,2,4], for: 3).1)
    } 
    func testInbetweenLowElement() throws {
        XCTAssertEqual(3, Algorithm.indexOfOrInsertionPoint([1,2,3,5,6,7,8,9], for: 4).1)
    }

    func testPerformanceExample() throws {
        self.measure {
            XCTAssertEqual(3, Algorithm.indexOfOrInsertionPoint([1,2,3,5,6,7,8,9,12,13,14,15,116,17,18,19,22,2,24,25,22,27,28], for: 4).1)
        }
    }
//  Search for 4 | low, high
// [1,2,3,4] - 0, 3
//     [3,4] - 3, 4
    
    
}
