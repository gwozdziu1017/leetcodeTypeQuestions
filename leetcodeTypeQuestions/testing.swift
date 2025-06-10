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
/* is anagram begin */
let isAnagramPositiveCases: [[String]] = [
    ["abcdefgh", "hgabcedf"]
]

let isAnagramNegativeCases: [[String]] = [
    ["abcdefgh", "abcdefghijklmnopqrstuvwxyz"],
    ["adssdadasdadasdasdasdasdasdasd", "p"],
    ["asd", ""]
]

func isAnagramTest() {
    for positiveCase in isAnagramPositiveCases {
        assert(isAnagram(string1: positiveCase[0], string2: positiveCase[1]))
    }
    for negativeCase in isAnagramNegativeCases {
        assert(!isAnagram(string1: negativeCase[0], string2: negativeCase[1]))
    }
    print("Is Anagram Passed")
}
/* is anagram end */
/* two sum begin */
let twoSumPositiveCases: [[[Int]]] = [
    [
        [1, 2, 3, 4, 5, 6, 7, 8], [ 9 ]
    ],
    [
        [9, 8, 7, 6, 5, 4], [ 11 ]
    ],
    [
        [1, 1], [2]
    ],
    [
        [0, 0, 0, 0, 0, 0, 0], [ 0 ]
    ]
]

let twoSumNegativeCases: [[[Int]]] = [
    [
        [1, 2, 3, 4, 5, 6, 7, 8, 9], [ 115 ]
    ],
    [
        [9, 8, 7, 6, 5, 4, 3, 3, 3, 1 ], [ 150 ]
    ]
]

func twoSumTest() {
    for positiveCase in twoSumPositiveCases {
        assert(twoSum(nums: positiveCase[0], number: positiveCase[1][0]))
    }
    for negativeCase in twoSumNegativeCases {
        assert(!twoSum(nums: negativeCase[0], number: negativeCase[1][0]))
    }
    print("Two Sum Passed")
}
/* two sum end */
/* is valid parenthesis begin */
let isValidParenthesisPositiveCases: [String] = [
    "()", "[]{}", "(())", "[(({}))]", "{[()()]}", "(((()()((())))))"]
let isValidParenthesisNegativeCases: [String] = [
    ")(", "[)]", "{[}]", "((())))", "((("]

func isValidParenthesisTest() {
    for positiveCase in isValidParenthesisPositiveCases {
        assert(isValidParenthesis(s: positiveCase))
    }
    for negativeCase in isValidParenthesisNegativeCases {
        assert(!isValidParenthesis(s: negativeCase))
    }
    print("Is Valid Parenthesis Passed")
}
/* is valid parenthesis end */
