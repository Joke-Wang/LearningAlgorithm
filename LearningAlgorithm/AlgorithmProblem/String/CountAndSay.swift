//
//  CountAndSay.swift
//  LearningAlgorithm
//
//  Created by super on 2021/3/12.
//  Copyright © 2021 王章仲. All rights reserved.
//

/*
 外观数列
 给定一个正整数 n ，输出外观数列的第 n 项。

 「外观数列」是一个整数序列，从数字 1 开始，序列中的每一项都是对前一项的描述。

 你可以将其视作是由递归公式定义的数字字符串序列：

 countAndSay(1) = "1"
 countAndSay(n) 是对 countAndSay(n-1) 的描述，然后转换成另一个数字字符串。
 前五项如下：

 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 第一项是数字 1
 描述前一项，这个数是 1 即 “ 一 个 1 ”，记作 "11"
 描述前一项，这个数是 11 即 “ 二 个 1 ” ，记作 "21"
 描述前一项，这个数是 21 即 “ 一 个 2 + 一 个 1 ” ，记作 "1211"
 描述前一项，这个数是 1211 即 “ 一 个 1 + 一 个 2 + 二 个 1 ” ，记作 "111221"
 要 描述 一个数字字符串，首先要将字符串分割为 最小 数量的组，每个组都由连续的最多 相同字符 组成。然后对于每个组，先描述字符的数量，然后描述字符，形成一个描述组。要将描述转换为数字字符串，先将每组中的字符数量用数字替换，再将所有描述组连接起来。

 例如，数字字符串 "3322251" 的描述如下图：


  

 示例 1：

 输入：n = 1
 输出："1"
 解释：这是一个基本样例。
 示例 2：

 输入：n = 4
 输出："1211"
 解释：
 countAndSay(1) = "1"
 countAndSay(2) = 读 "1" = 一 个 1 = "11"
 countAndSay(3) = 读 "11" = 二 个 1 = "21"
 countAndSay(4) = 读 "21" = 一 个 2 + 一 个 1 = "12" + "11" = "1211"
  

 提示：

 1 <= n <= 30
 相关标签
 字符串

 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnpvdm/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import UIKit

class CountAndSay: NSObject {
    
    class func countAndSay(_ n: Int) -> String {
        
        if n < 1 || n > 30 {
            return ""
        }
        
        if n == 1 {
            return "1"
        }
        
        let strs = [Character](countAndSay(n - 1))
        var result = ""
        var tmp = strs.first
        var num = 0
        
        for str in strs {
            if tmp != str {
                result.append(num.description)
                result.append(tmp!)
                tmp = str
                num = 1
            } else {
                num += 1
            }
        }
        result.append(num.description)
        result.append(tmp!)
        return String(result)
    }
    
}

class CountAndSay1: NSObject {
    
    class func countAndSay(_ n: Int) -> String {
        
        if n < 1 || n > 30 {
            return ""
        }
        
        if n == 1 {
            return "1"
        }
        
        let str = countAndSay(n - 1) as NSString
        var result = ""
        var tmp = ""
        var num = 0
        
        for index in 0..<str.length {
            let indexStr = str.substring(with: NSMakeRange(index, 1))
            
            if tmp != indexStr && index > 0 {
                result = result.appending(num.description).appending(tmp)
                num = 0
            }
            
            tmp = indexStr
            num += 1
            
        }
        
        result = result.appending(num.description).appending(tmp)
        
        return result
    }
    
}

class CountAndSay0: NSObject {
    
    class func countAndSay(_ n: Int) -> String {
        
        if n < 1 || n > 30 {
            return ""
        }
        
        if n == 1 {
            return "1"
        }
        
        return description(n: countAndSay(n - 1))
    }
    
    class func description(n: String) -> String {
        
        let str = n as NSString
        var result = ""
        var tmp = ""
        var num = 0
        
        for index in 0..<str.length {
            let indexStr = str.substring(with: NSMakeRange(index, 1))
            
            if tmp != indexStr && index > 0 {
                result = result.appending(num.description).appending(tmp)
                num = 0
            }
            
            tmp = indexStr
            num += 1
            
        }
        
        result = result.appending(num.description).appending(tmp)
        
        
        return result
    }
    
    
    
    
}


// 耗时最短
class Solution0 {
    func countAndSay(_ n: Int) -> String {
        if n == 1 {
            return "1"
        }
        let last = [Character](countAndSay(n-1))
        var ans = ""
        var char = last[0]
        var i = 0
        for ch in last {
            if ch == char {
                i += 1
            } else {
                ans.append(String(i))
                ans.append(char)
                i = 1
                char = ch
            }
        }
        ans.append(String(i))
        ans.append(char)
        return String(ans)
    }
}

// 消耗内存最少
class Solution1 {
    func countAndSay(_ n: Int) -> String {
        var str = ""
        /// 描述n-1
        if n == 1 {
            return "1"
        } else if n == 2 {
            return "11"
        } else {
            let lastStr = countAndSay(n - 1)
            var dupNum: Character = lastStr[lastStr.startIndex]
            var dupCount = 1
            for i in 1..<lastStr.count {
                let curChar = lastStr[lastStr.index(lastStr.startIndex, offsetBy: i)]
                if dupNum != curChar {
                    /// 计算数值
                    str.append("\(dupCount)\(dupNum)")
                    dupNum = curChar
                    dupCount = 1
                } else {
                    dupCount += 1
                }
                if i == (lastStr.count - 1) {
                    str.append("\(dupCount)\(dupNum)")
                }
            }
        }
        return str
    }
}
