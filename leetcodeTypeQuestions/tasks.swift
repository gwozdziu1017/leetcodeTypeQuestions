//
//  tasks.swift
//  neetcode
//
// Here we have only implementation of functions resolving problems.
//
//  Created by Damian Gwóźdź on 08/06/2025.
//

/*
 Check if given array nums contains duplicates.
*/
func containsDuplicates(nums: [Int]) -> Bool {
    var hashMap: [Int] = []
    
    for n in nums {
        if hashMap.contains(n) {
            return true
        }
        hashMap.insert(n, at: 0)
    }
    return false
}

/*
 Check if given string is a palindrome.
 String can contain spaces, upper and downcase and it can be an empty string
*/
func isPalindrome(word: String) -> Bool {
    if word.isEmpty {
        return true // assuming that empty string is valid palindrome
    }
    
    let wordArray: [Character] = Array(word.components(separatedBy: .whitespaces).joined().uppercased())
    
    var iterator1: Int = 0
    var iterator2: Int = wordArray.count - 1
    
    while iterator1 < iterator2 {
        if wordArray[iterator1] != wordArray[iterator2] {
            return false
        }
        iterator1 += 1
        iterator2 -= 1
    }
    return true
}

/*
    Check if two given strings are anagram.
 */
func isAnagram(string1: String, string2: String) -> Bool {
    if string1.isEmpty || string2.isEmpty {
        return false
    }
    var map1: [Character: Int] = [
        "a" : 0,
        "b" : 0,
        "c" : 0,
        "d" : 0,
        "e" : 0,
        "f" : 0,
        "g" : 0,
        "h" : 0,
        "i" : 0,
        "j" : 0,
        "k" : 0,
        "l" : 0,
        "m" : 0,
        "n" : 0,
        "o" : 0,
        "p" : 0,
        "q" : 0,
        "r" : 0,
        "s" : 0,
        "t" : 0,
        "u" : 0,
        "v" : 0,
        "w" : 0,
        "x" : 0,
        "y" : 0,
        "z" : 0
    ]

    var map2: [Character: Int] = [
        "a" : 0,
        "b" : 0,
        "c" : 0,
        "d" : 0,
        "e" : 0,
        "f" : 0,
        "g" : 0,
        "h" : 0,
        "i" : 0,
        "j" : 0,
        "k" : 0,
        "l" : 0,
        "m" : 0,
        "n" : 0,
        "o" : 0,
        "p" : 0,
        "q" : 0,
        "r" : 0,
        "s" : 0,
        "t" : 0,
        "u" : 0,
        "v" : 0,
        "w" : 0,
        "x" : 0,
        "y" : 0,
        "z" : 0
    ]

    for character in string1 {
        map1[character]! += 1
    }
    for character in string2 {
        map2[character]! += 1
    }

    return map1 == map2
}

/*
    Check if given array contains two number which added equal the number
*/
func twoSum(nums: [Int], number: Int) -> Bool {
    let sortedNums = nums.sorted(by: <)
    var iterator1 = 0
    var iterator2 = nums.count - 1

    while iterator1 < iterator2 {
        if sortedNums[iterator1] + sortedNums[iterator2] == number {
            return true
        }
        else if sortedNums[iterator1] + sortedNums[iterator2] > number {
            iterator2 -= 1
        }
        else if sortedNums[iterator1] + sortedNums[iterator2] < number{
            iterator1 += 1
        }
    }
    return false
}

/*
 Check if given string s contains valid string of parenthesis open and closed
*/
func isValidParenthesis(s: String) -> Bool {
    var list: [Character] = []
    for char in s {
        if char == "(" || char == "[" || char == "{" {
            list.append(char)
        }
        else {
            if char == ")" && (list.isEmpty || list.popLast() != "(") ||
                char == "]" && (list.isEmpty || list.popLast() != "[") ||
                char == "}" && (list.isEmpty || list.popLast() != "{") {
                return false
            }
        }
    }
    return list.isEmpty
}

/*
 Given an integer array nums and an integer k, return the k most frequent elements within the array.
 The test cases are generated such that the answer is always unique.
 You may return the output in any order.
*/
func topKFrequent(nums: [Int], k: Int) -> [Int] {
    var hashMap: [Int: Int] = [:]
    var output: [Int] = []
    for num in nums {
        if hashMap.contains(where: { $0.key == num }) {
            hashMap[num]! += 1
        }
        else {
            hashMap[num] = 1
        }
    }
    for _ in 0...k-1 {
        let maxFreq = hashMap.max {a, b in a.value < b.value }
        output.append(maxFreq!.key)
        hashMap.removeValue(forKey: maxFreq!.key)
    }
    return output
}

/*
 You are given an integer array heights where heights[i] represents the height of the
 ith bar.
 You may choose any two bars to form a container. Return the maximum amount of water a container can store.
 */
func containerWithMostWater(heights: [Int]) -> Int {
    var begin = 0;
    var end = heights.count - 1
    var area = 0

    while(begin < end) {
        var tempArea = min(heights[begin], heights[end]) * (end - begin)
        if(heights[begin] < heights[end]) {
            begin += 1
        }
        else {
            end -= 1
        }
        area = max(area, tempArea)
    }
    return area
}
