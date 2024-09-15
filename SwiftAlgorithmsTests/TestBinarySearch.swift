//
//  TestBinarySearch.swift
//  SwiftAlgorithmsTests
//
//  Created by Tim Sloncz on 9/15/24.
//

import Foundation
import XCTest

@testable import SwiftAlgorithms


final class TestBinarySearch: XCTestCase {

    func testOneElement() throws {
        XCTAssertEqual(0, Algorithm.binarySearch([1], for: 1))
    }
    
    func testFirstMiddleElement() throws {
        XCTAssertEqual(1, Algorithm.binarySearch([1,2,3], for: 2))
    }
    func testFirstElement() throws {
        XCTAssertEqual(0, Algorithm.binarySearch([1,2,3], for: 1))
    }
    func testLastElement() throws {
        XCTAssertEqual(2, Algorithm.binarySearch([1,2,3], for: 3))
    }
    
    func testInbetweenHighElement() throws {
        XCTAssertNil(Algorithm.binarySearch([1,2,4], for: 3))
    }
    func testInbetweenLowElement() throws {
        XCTAssertNil(Algorithm.binarySearch([1,2,3,5,6,7,8,9], for: 4))
    }

    func testPerformanceExample() throws {
        self.measure {
            XCTAssertEqual(3, Algorithm.binarySearch([1,2,3,4,5,6,7,8,9,12,13,14,15,116,17,18,19,22,2,24,25,22,27,28], for: 4))
        }
    }
//  Search for 4 | low, high
// [1,2,3,4] - 0, 3
//     [3,4] - 3, 4
    
    
}
