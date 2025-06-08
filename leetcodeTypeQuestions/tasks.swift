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
