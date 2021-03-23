//
//  ViewController.swift
//  StudyAlgorithm
//
//  Created by super on 2021/2/8.
//

import UIKit

class ViewController: UIViewController {
    
    var rotateNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        var numbers = [1, 1, 2, 2, 3]
//        let noRepeatCount = DeletesDuplicateValuesInArray.removeDuplicates(&numbers)
//        print(noRepeatCount, numbers)
        
        
        
        RotateArray.rotate(&rotateNumbers, 5)
//        print(rotateNumbers)
        
        /*
         right
         
         [9, 1, 2, 3, 4, 5, 6, 7, 8]
         [8, 9, 1, 2, 3, 4, 5, 6, 7]
         [7, 8, 9, 1, 2, 3, 4, 5, 6]
         [6, 7, 8, 9, 1, 2, 3, 4, 5]
         [5, 6, 7, 8, 9, 1, 2, 3, 4]
         [4, 5, 6, 7, 8, 9, 1, 2, 3]
         [3, 4, 5, 6, 7, 8, 9, 1, 2]
         [2, 3, 4, 5, 6, 7, 8, 9, 1]
         [1, 2, 3, 4, 5, 6, 7, 8, 9]
         */
        
        /*
         left
         
         [2, 3, 4, 5, 6, 7, 8, 9, 1]
         [3, 4, 5, 6, 7, 8, 9, 1, 2]
         [4, 5, 6, 7, 8, 9, 1, 2, 3]
         [5, 6, 7, 8, 9, 1, 2, 3, 4]
         [6, 7, 8, 9, 1, 2, 3, 4, 5]
         [7, 8, 9, 1, 2, 3, 4, 5, 6]
         [8, 9, 1, 2, 3, 4, 5, 6, 7]
         [9, 1, 2, 3, 4, 5, 6, 7, 8]
         [1, 2, 3, 4, 5, 6, 7, 8, 9]
         */
        
        
//        var digits = [9,9,9]
//        print(AddOne.plusOne(digits))
//
//        var moveZeroesArr = [0,0,0,0,0,0,0,1]
//        MoveZeroes.moveZeroes(&moveZeroesArr)
//        print(moveZeroesArr)
//
//        var strings: [Character] = ["a", "b", "c", "s"]
//        InvertString.reverseString(&strings)
//        print(strings)
//
//
//        print(InvertInteger.reverse(1534236469))
//
//
//        let strs = ["flower","flow","flight"]
//        print(LongestCommonPrefix.longestCommonPrefix(strs))
        
//        print(ContainsStringFromIndex.strStr("hello", "ll"))
//        print(ContainsStringFromIndex.strStr("", ""))
//        print(ContainsStringFromIndex.strStr("abc", "c"))
        
//        print(StringToInt.myAtoi("42"))
//        print(StringToInt.myAtoi("     -42"))
//        print(StringToInt.myAtoi("4193 with words"))
//        print(StringToInt.myAtoi("words and 987"))
//        print(StringToInt.myAtoi("-91283472332"))
//        
//        print(StringToInt.myAtoi("   +0 123"))
//        print(StringToInt.myAtoi("00000-42a1234"))
        
//        print(CountAndSay.countAndSay(1))
//        print(CountAndSay.countAndSay(2))
//        print(CountAndSay.countAndSay(3))
//        print(CountAndSay.countAndSay(4))
        
        
        print(FizzBuzz.fizzBuzz(15))
        
    }
    
}

