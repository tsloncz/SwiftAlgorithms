//
//  BinaryTree.swift
//  SwiftAlgorithms
//
//  Created by Tim Sloncz on 9/15/24.
//

import Foundation

/**
 Binary Tree is a non-linear data structure where each node has at most two children
 */
public struct BinaryTree {
    var rootNode: TreeNode? = nil
    
    // In-order DFS: Left, Root, Right
    public func traverseInOrder(from node: TreeNode?) {
        guard let node else { return }
        
        traverseInOrder(from: node.leftChild)
        print(node.data)
        traverseInOrder(from: node.rightChild)
    }
    
    // Pre-order DFS: Root, Left, Right
    public func traverseInPreOrder(from node: TreeNode?) {
        guard let node else { return }

        print(node.data)
        traverseInOrder(from: node.leftChild)
        traverseInOrder(from: node.rightChild)
    }
    
    // Post-order DFS: Left, Right, Root
    public func traverseInPostOrder(from node: TreeNode?) {
        guard let node else { return }

        traverseInOrder(from: node.rightChild)
        traverseInOrder(from: node.leftChild)
        print(node.data)
    }
    
    // BFS: Level order traversal
    public func traverseBFS(from node: TreeNode?) {
        guard let node else { return }
        var queue = [node]
        while !queue.isEmpty {
            let node = queue.removeFirst()
            print(node.data)
            if let left = node.leftChild {
                queue.append(left)
            }
            if let right = node.rightChild {
                queue.append(right)
            }
        }
    }

}
/**
 This binary tree has three levels (height = 2) and follows the structure of a complete binary tree. Each node has two children except the leaf nodes at the bottom.
   1
  /    \
 2      3
 / \     / \
4   5  6   7

 */
