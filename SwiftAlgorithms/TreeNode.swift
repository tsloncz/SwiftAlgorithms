//
//  TreeNode.swift
//  SwiftAlgorithms
//
//  Created by Tim Sloncz on 9/15/24.
//

import Foundation

final public class TreeNode {
    var data: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    
    init(data: Int,
         leftChild: TreeNode? = nil,
         rightChild: TreeNode? = nil) {
        self.data = data
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}
