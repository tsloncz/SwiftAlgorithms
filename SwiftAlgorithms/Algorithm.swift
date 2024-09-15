//
//  BinarySearch.swift
//  SwiftAlgorithms
//
//  Created by Tim Sloncz on 9/15/24.
//

import Foundation

final public class Algorithm {
    
    /// Find the index of OR the index that an element should be. Uses modified Binary search for a O(log n)
    ///
    /// - Parameters:
    ///   - array: Array of elemets to search in ascending order
    ///   - target: The elemet to search for
    /// - Returns: Tuple indicating if the index is found(true, index) OR where at what index the element should be(false, index)
    public static func indexOfOrInsertionPoint<T: Comparable>(_ array: [T],
                                            for target: T) -> (Bool, Int) {
        let result = coreBinarySearch(array, for: target)
        if let index = result.index {
            return (true, index)
        } else {
            return (false, result.lastLow)
        }
    }
    
    /// Standard binary search of sorted list (ascending)
    ///
    /// - Parameters:
    ///   - array: The array of elements to search
    ///   - target: What to search for
    /// - Returns: Int of index or nil if not found
    public static func binarySearch<T: Comparable>(_ array: [T],
                                            for target: T) -> Int? {
        return coreBinarySearch(array, for: target).index
    }
    
    private static func coreBinarySearch<T: Comparable>(_ array: [T],
                                              for target: T) -> (lastLow: Int, index: Int?) {
        var low = 0
        var high = array.count - 1
        while low <= high {
            let mid = low + (high - low) / 2
            if array[mid] == target {
                return (low, mid)
            } else if array[mid] < target {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return (low, nil)
    }
}
