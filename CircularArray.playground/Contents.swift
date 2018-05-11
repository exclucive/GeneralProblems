//: Playground - noun: a place where people can play

import UIKit

/*
 * Given a circular array of relative indices, find out if there is a complete cycle. Each cell
 * points relatively to another cell (e.g., -1 to the previous cell, 2 to the second next cell and 0
 * to the same cell). A complete cycle corresponds to visiting all the cells, only once each.

 * Example:
 *   [2, 2, -1] --> true
 *   [2, 2, 0] --> false
 *   [0] --> true
 *   [1, -1] --> true
 *
 */



//let array = [2, -4, -1]
func hasCycle(_ array: [Int]) -> Bool {
    var sum = 0
    for item in array {
        sum += item
    }
    
    var index = 0
    for item in array {
        index = (((index + array[index]) % array.count) + array.count) % array.count
        sum -= array[index]
    }
    
    return sum == 0
}

hasCycle(array)
