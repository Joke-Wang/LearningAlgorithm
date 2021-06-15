//
//  KthLargestElementInArray.swift
//  LearningAlgorithm
//
//  Created by super on 2021/6/10.
//  Copyright © 2021 王章仲. All rights reserved.
//


/**
 215. 数组中的第K个最大元素
 在未排序的数组中找到第 k 个最大的元素。请注意，你需要找的是数组排序后的第 k 个最大的元素，而不是第 k 个不同的元素。

 示例 1:

 输入: [3,2,1,5,6,4] 和 k = 2
 输出: 5
 示例 2:

 输入: [3,2,3,1,2,4,5,5,6] 和 k = 4
 输出: 4
 说明:

 你可以假设 k 总是有效的，且 1 ≤ k ≤ 数组的长度。
 
 
 链接：https://leetcode-cn.com/problems/kth-largest-element-in-an-array/
 */


import Foundation


class FindKthLargest {
    class func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        
        guard 1 <= k && k <= nums.count else {
            return 0
        }
        
        
        var tmp: [Int] = [Int]()
        
        for item in nums {
            
            if tmp.count == 0 {
                tmp.append(item)
                continue
            }
            
            let maxLength = min(tmp.count, k)
            for i in 0..<maxLength {
                if item >= tmp[i] {
                    tmp.insert(item, at: i)
                    break
                } else if i == maxLength - 1  {
                    tmp.append(item)
                    break
                }
            }
            
        }
        
        return tmp[k-1]
    }
    
}
