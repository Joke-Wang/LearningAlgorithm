//
//  ContainsStringFromIndex.swift
//  LearningAlgorithm
//
//  Created by super on 2021/3/11.
//  Copyright © 2021 王章仲. All rights reserved.
//


/*
 实现 strStr()
 实现 strStr() 函数。

 给定一个 haystack 字符串和一个 needle 字符串，在 haystack 字符串中找出 needle 字符串出现的第一个位置 (从0开始)。如果不存在，则返回  -1。

 示例 1:

 输入: haystack = "hello", needle = "ll"
 输出: 2
 示例 2:

 输入: haystack = "aaaaa", needle = "bba"
 输出: -1
 说明:

 当 needle 是空字符串时，我们应当返回什么值呢？这是一个在面试中很好的问题。

 对于本题而言，当 needle 是空字符串时我们应当返回 0 。这与C语言的 strstr() 以及 Java的 indexOf() 定义相符。

 相关标签
 双指针
 字符串

 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnr003/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import Foundation

class ContainsStringFromIndex: NSObject {
    
    class func strStr(_ haystack: String, _ needle: String) -> Int {

        let haystackStr = haystack as NSString
        let needleStr   = needle as NSString

        if needleStr.length > haystackStr.length {
            return -1
        }

        if haystack == needle || needleStr.length == 0 {
            return 0
        }
        
        for i in 0...(haystackStr.length - needleStr.length) {
            if haystackStr.substring(with: NSMakeRange(i, needleStr.length)) == needle {
                return i
            }

        }

        return -1

    }
}
