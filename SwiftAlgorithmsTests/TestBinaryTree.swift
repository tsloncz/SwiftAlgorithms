//
//  TestBinaryTree.swift
//  SwiftAlgorithmsTests
//
//  Created by Tim Sloncz on 9/15/24.
//

import XCTest
@testable import SwiftAlgorithms

//Note: These test execute functions and you validate via reading the output
final class TestBinaryTree: XCTestCase {
    
    func sut() -> BinaryTree {
        var testTree = BinaryTree()
        
        let four = TreeNode(data: 4)
        let five = TreeNode(data: 5)
        let two = TreeNode(data: 2,
                           leftChild: four,
                           rightChild: five)
        let six = TreeNode(data: 6)
        let three = TreeNode(data: 3, rightChild: six)

        let root = TreeNode(data: 1, leftChild: two, rightChild: three)
        
        testTree.rootNode = root
        return testTree
    }

    func testInitReturnsAnInstance() throws {
        XCTAssertNotNil(BinaryTree())
    }

    func testTraverseInOrder() throws {
        let testTree = sut()
        testTree.traverseInOrder(from: testTree.rootNode)
    }
    
    func testTraversePreOrder() throws {
        let testTree = sut()
        testTree.traverseInPreOrder(from: testTree.rootNode)
    }
    
    func testTraversePostOrder() throws {
        let testTree = sut()
        testTree.traverseInPreOrder(from: testTree.rootNode)
    }
    func testTraverseBFS() throws {
        let testTree = sut()
        testTree.traverseBFS(from: testTree.rootNode)
    }
}
