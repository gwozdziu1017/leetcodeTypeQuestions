//
//  testing.swift
//  neetcode
//
//  Here we have only test cases and testing functions for each case
//
//  Created by Damian Gwóźdź on 08/06/2025.
//

/* contains duplicates begin */
let containDuplicatesPositiveCases : [[Int]] = [
    [1, 1, 3, 4, 5],
    [1, 1],
    [0, 0, 0, 0, 0]
]

let containsDuplicatesNegativeCases : [[Int]] = [
    [1, 2, 3, 4, 5],
    []
]

func containDuplicatesTest() {
    for positiveCase in containDuplicatesPositiveCases {
        assert(containsDuplicates(nums: positiveCase))
    }
    for negativeCase in containsDuplicatesNegativeCases {
        assert(!containsDuplicates(nums: negativeCase))
    }
    print("Contains Duplicates Passed")
}
/* contains duplicates end */

/* is palindrome begin */
let isPalindromePositiveCases: [String] = [
    "racecar",
    "abcba",
    "Anna",
    "level",
    "kayak",
    "never odd or even",
    "a",
    "aba",
    ""
]

let isPalindromeNegativeCases: [String] = [
    "nopalindrome"
]

func isPalindromeTest() {
    for positiveCase in isPalindromePositiveCases {
        assert(isPalindrome(word: positiveCase))
    }
    for negativeCase in isPalindromeNegativeCases {
        assert(!isPalindrome(word: negativeCase))
    }
    print("Is Palindrome Passed")
}
/* is palindrome end */

